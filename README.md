# Adobe Font Revealer

> This shell script copies all activated creative cloud fonts (otf) to your Downloads directory

The Adobe Fonts are stored (hidden) under (macOS): `$HOME/Library/Application\ Support/Adobe/CoreSync/plugins/livetype/.r/`. Also the filenames are some sort of id.
Which is good for Adobe managing the files, yet not human-readable.
This script copies all the files to your Downloads directory and renames all font files to what they represent.
For example, the file `.17969.otf` becomes `MinionPro-BoldCnItCapt.otf` (which includes all cues for font varition, weight, etc.).

## Run The Script
You need to have lcdf-typetools installed.

1. Install lcdf-typetools (< 1mb)
- macOS (brew):
  - `brew install lcdf-typetools`
- Windows (WSL, to do)
  - sudo apt-get install -y lcdf-typetools

2. Run `bash reveal.sh`

