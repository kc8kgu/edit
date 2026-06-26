# edit

A nano / pico-style terminal text editor, written in Python with `curses`.

## Features

- Familiar nano-style keybindings
- Mouse support (click to position cursor, scroll wheel)
- Shift+Arrow text selection, cut/copy/paste
- Search

## Keybindings

| Key      | Action          |
|----------|-----------------|
| `^Q`     | Quit            |
| `^S`     | Save            |
| `^F`     | Search          |
| `^X`     | Cut line / selection  |
| `^C`     | Copy line / selection |
| `^V`     | Paste           |
| `^G`     | Help            |
| Shift+Arrows | Select text |
| Esc      | Cancel selection |

## Requirements

- Python 3
- On Windows: [`windows-curses`](https://pypi.org/project/windows-curses/) (installed automatically via `requirements.txt`)

## Installation

```bash
pip install -r requirements.txt
```

## Usage

```bash
python edit.py [filename]
```

If no filename is given, edit opens with an empty, unnamed buffer.

## License

MIT — see [LICENSE.md](LICENSE.md).
