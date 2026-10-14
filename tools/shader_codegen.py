"""Expand the shader's explicitly bounded loops before either HLSL compiler sees them.

Wine's compiler can crash or stall while unrolling specialized HLSL. Keep readable
loops in the maintained modules and emit equivalent scoped constant iterations.
This deliberately supports only literal integer bounds and unit increments.
"""

import re

_LOOP = re.compile(
    r"\[unroll\]\s*for\s*\(int (\w+) = (-?\d+);\s*\1 (<|<=) (-?\d+);"
    r"\s*(?:\1\+\+|\+\+\1)\)\s*\{"
)
# Braces inside comments and strings do not open or close a shader block.
_BLOCK_TOKEN = re.compile(r'//[^\n]*|/\*[\s\S]*?\*/|"(?:\\.|[^"\\])*"|[{}]')


def expand_fixed_loops(source):
    """Preserve loop order and lexical scopes; reject unsupported loop control."""
    while match := _LOOP.search(source):
        start = match.end()
        depth = 1
        for token in _BLOCK_TOKEN.finditer(source, start):
            depth += (token[0] == "{") - (token[0] == "}")
            if depth == 0:
                end = token.start()
                break
        else:
            raise ValueError("Unclosed fixed shader loop")
        body = source[start:end]
        if re.search(r"\b(?:break|continue)\s*;", body):
            raise ValueError("Expanded shader loops cannot use break or continue")
        variable, first, comparison, last = match.groups()
        stop = int(last) + (comparison == "<=")
        # Declare a scoped constant rather than substituting identifiers: an index
        # named x must not change vector swizzles, nested declarations or comments.
        iterations = "\n".join(
            f"{{\nconst int {variable} = {index};{body}}}"
            for index in range(int(first), stop)
        )
        source = source[: match.start()] + iterations + source[end + 1 :]
    if "[unroll]" in source or "[loop]" in source:
        raise ValueError("Shader loop is outside the supported fixed-bound form")
    return source


def lower_constant_arrays(source):
    """Emit scalar/vector constant tables as lookups, avoiding Wine's local arrays.

    The generated profile headers contain only literal entries and constructors.
    Array indices must remain in range, as required by the original tables.
    """
    names = []

    def lookup(match):
        kind, name, size, body = match.groups()
        values = []
        start = depth = 0
        for offset, char in enumerate(body):
            depth += (char == "(") - (char == ")")
            if char == "," and depth == 0:
                values.append(body[start:offset].strip())
                start = offset + 1
        values.append(body[start:].strip())
        if len(values) != int(size):
            raise ValueError(f"Constant table {name} has the wrong entry count")
        names.append(name)
        # A single return also avoids Wine stalling when ReShade specializes indices.
        choices = "\n".join(
            f"index == {index} ? {value} :" for index, value in enumerate(values[:-1])
        )
        return f"{kind} Lookup{name}(int index) {{\nreturn {choices}\n{values[-1]};\n}}"

    source = re.sub(
        r"static const (bool|int|float[234]?) (\w+)\[(\d+)\]\s*=\s*\{([^{}]*)\};",
        lookup,
        source,
    )
    for name in names:
        source = re.sub(
            r"\b" + name + r"\[([^\[\]]+)\]", r"Lookup" + name + r"(\1)", source
        )
        if re.search(r"\b" + name + r"\s*\[", source):
            raise ValueError(f"Unsupported nested index for constant table {name}")
    return source
