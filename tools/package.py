"""Build an installable shader ZIP and its SHA-256 checksum."""

import argparse
import hashlib
import re
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
REPOSITORY = "https://github.com/asuparabekon/SpektraFilm-ReShade"


def package(version, source_ref):
    shader = (ROOT / "Shaders/SpektraFilm.fx").read_text()
    textures = set(re.findall(r'source\s*=\s*"([^"/]+\.png)"', shader))
    if not textures:
        raise ValueError("The generated shader has no texture references")
    files = [ROOT / "LICENSE", ROOT / "CREDITS.md", ROOT / "CHANGELOG.txt"]
    files += sorted((ROOT / "Shaders").glob("*.fx"))
    files += sorted((ROOT / "Shaders").glob("*.fxh"))
    files += [ROOT / "Textures" / name for name in sorted(textures)]
    files += sorted((ROOT / "licenses").glob("*.txt"))
    for path in files:
        if not path.is_file():
            raise FileNotFoundError(path)

    instructions = f"""SpektraFilm-ReShade {version}

Install ReShade with its standard support files (including ReShade.fxh).
Copy Shaders and Textures into the matching folders under reshade-shaders.
Keep the license and credit files with any redistributed copy.
Reload ReShade and enable 'SpektraFilm - film and print'.
No addon or plugin is needed. Input/output is SDR sRGB, not HDR/scRGB.
Disable Performance Mode while editing controls.

Film damage includes scanned dust, hairs and scratches. It defaults off.
Raise Film damage amount in the Film damage category to enable it.

Project and full documentation:
{REPOSITORY}
Corresponding source for this build (including editable modules/build tools):
{REPOSITORY}/tree/{source_ref}
{REPOSITORY}/archive/{source_ref}.zip

Original film model: Andrea Volpato / spektrafilm
https://github.com/andreavolpato/spektrafilm
Full third-party attribution: CREDITS.md and licenses/.
"""
    output = ROOT / "dist"
    output.mkdir(exist_ok=True)
    archive = output / f"SpektraFilm-ReShade-{version}.zip"
    entries = {path.relative_to(ROOT).as_posix(): path.read_bytes() for path in files}
    entries["README.txt"] = instructions.encode()
    with zipfile.ZipFile(
        archive, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9
    ) as bundle:
        for name, data in sorted(entries.items()):
            info = zipfile.ZipInfo(name, date_time=(1980, 1, 1, 0, 0, 0))
            info.create_system = 3
            info.external_attr = 0o100644 << 16
            info.compress_type = zipfile.ZIP_DEFLATED
            bundle.writestr(info, data, compresslevel=9)
    digest = hashlib.sha256(archive.read_bytes()).hexdigest()
    archive.with_suffix(".zip.sha256").write_text(f"{digest}  {archive.name}\n")
    print(f"Packaged {len(entries)} files: {archive}")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--version", required=True)
    parser.add_argument(
        "--source-ref", help="Source commit or tag; defaults to the version"
    )
    args = parser.parse_args()
    if not re.fullmatch(
        r"(?:v\d+\.\d+\.\d+(?:-[A-Za-z0-9.-]+)?|preview-[0-9a-f]{12})", args.version
    ):
        parser.error("Use v1.2.3, v1.2.3-rc.1 or preview-<12-character commit>")
    package(args.version, args.source_ref or args.version)


if __name__ == "__main__":
    main()
