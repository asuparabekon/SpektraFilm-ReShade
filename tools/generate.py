"""Assemble the installable shader using Python 3.10 or newer."""

import re
from pathlib import Path

from shader_codegen import expand_fixed_loops, lower_constant_arrays

ROOT = Path(__file__).resolve().parents[1]


def generate():
    source = (ROOT / "src/SpektraFilm.template.fx").read_text()
    source = re.sub(
        r'^#include "(shader/[^"\n]+)"\n',
        lambda match: (ROOT / "src" / match[1]).read_text(),
        source,
        flags=re.MULTILINE,
    )
    source = re.sub(
        r'^#include "(Spektra-(?:Profiles|Optical|Lens|LensEffects)\.fxh)"\n',
        lambda match: (ROOT / "src/data" / match[1]).read_text(),
        source,
        flags=re.MULTILINE,
    )
    target = ROOT / "Shaders"
    target.mkdir(exist_ok=True)
    (target / "SpektraFilm.fx").write_text(
        expand_fixed_loops(lower_constant_arrays(source))
    )
    (target / "Spektra-Passes.fxh").write_text(
        (ROOT / "src/Spektra-Passes.fxh").read_text()
    )
    print("Generated Shaders/SpektraFilm.fx")


if __name__ == "__main__":
    generate()
