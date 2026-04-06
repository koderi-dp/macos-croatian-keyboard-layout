# Install and test

## 1. Install the custom keylayout

Copy `Croatian - Lenovo PC.keylayout` into one of these folders:

- per-user: `~/Library/Keyboard Layouts/`
- system-wide: `/Library/Keyboard Layouts/`

Then either log out and back in, or restart the Mac.

## 2. Enable it in macOS

Open:

- System Settings
- Keyboard
- Input Sources
- Add Input Source
- Others
- `Croatian - Lenovo PC`

Select it as the active input source.

## 3. Keep the Karabiner rule enabled

This repository also contains a Karabiner complex modification for Windows-like shortcut behavior.

That rule swaps physical Control and Command behavior so your Mac shortcuts feel like Windows shortcuts.

## 4. First things to test

### Base letters

- physical Mac `Y` key should type `z`
- physical Mac `Z` key should type `y`

### Croatian letters

- right of `P` -> `š`
- next -> `đ`
- right of `L` -> `č`
- next -> `ć`
- next -> `ž`

### Confirmed AltGr layer targets

Use `Option` or `Right Option` on macOS and test:

- `Option + V` -> `@`
- `Option + F` -> `[`
- `Option + G` -> `]`
- `Option + B` -> `{`
- `Option + N` -> `}`
- `Option + Š` -> `÷`

## 5. Current status

This is a **first-pass generated layout**.

It encodes the confirmed Lenovo behavior from the hardware photos and the user-provided key results, especially:

- QWERTZ base letter behavior
- Croatian letter placement on the right side of the keyboard
- the confirmed AltGr mappings for `@`, square brackets, and braces
- Windows-like shortcut behavior when combined with the Karabiner rule

## 6. Expected refinement

A few less important symbol positions may still need adjustment after real-world testing on the Mac.

The most useful next feedback would be a short test list of:

- what works exactly as expected
- which key still differs from the Lenovo
- whether any Option/Shift+Option combinations are off
