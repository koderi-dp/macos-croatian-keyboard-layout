# Target Lenovo Croatian printable mapping

This document records the observed and user-confirmed target behavior for the **Lenovo ThinkPad T14s Gen 6 Croatian Windows keyboard**.

The goal of the repository is to make the Mac behave like this layout as closely as possible.

## Base layout

Target base layout is **Croatian Windows QWERTZ**.

### Top letter row
`Q W E R T Z U I O P Š Đ`

### Home row
`A S D F G H J K L Č Ć Ž`

### Bottom row
`Y X C V B N M`

## Confirmed AltGr mappings

These were confirmed directly by the user on the Lenovo keyboard.

- `AltGr + V` = `@`
- `AltGr + F` = `[`
- `AltGr + G` = `]`
- `AltGr + B` = `{`
- `AltGr + N` = `}`

## Confirmed visible symbol keys

### Key right of `0`
- base = `'`
- shift = `?`

### Key right of `P`
- base = `Š`
- AltGr = division symbol

### Key right of `L`
- base = `Č`

## Visible Croatian letters seen on the Lenovo photo

- key right of `P` = `Š`
- next key = `Đ`
- key right of `L` = `Č`
- next key = `Ć`
- next key = `Ž`

## Implementation implications

To mimic Lenovo behavior on macOS, the final solution should cover:

1. **QWERTY -> QWERTZ swap**
   - swap printable behavior of `Y` and `Z`

2. **Windows Croatian symbol layer**
   - reproduce the confirmed AltGr mappings on macOS Option / Right Option layer

3. **Windows shortcut muscle memory**
   - handled separately via Karabiner by swapping physical Control and Command behavior

## Still to verify

These items may still need final validation before generating a polished custom `.keylayout` file:

- exact character produced by `AltGr` on the key right of `P`
- full symbol layer for keys around `M`, `L`, and the number row
- dead-key behavior, if any

## Current practical recommendation

Even before a custom `.keylayout` is added, users can already:

- use the Karabiner rule from this repository for Windows-like shortcuts
- select the Croatian macOS input source that is closest to the Lenovo base layout

The custom `.keylayout` should be added as the next step to finish printable character parity.
