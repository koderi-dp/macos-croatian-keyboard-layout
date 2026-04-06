# Observed layout differences from hardware photos

This document captures the visible differences between the user's two actual keyboards.

## Devices compared

- **MacBook Air 15** with Apple Croatian-labeled keyboard
- **Lenovo ThinkPad T14s Gen 6** with Windows Croatian keyboard

## Core finding

The keyboards are not just using different shortcut conventions.
They are also using different **base letter layouts**:

- **Mac**: Croatian **QWERTY** (`Q W E R T Y ...`)
- **Lenovo**: Croatian **QWERTZ** (`Q W E R T Z ...`)

That is why `Y` and `Z` feel reversed immediately.

## Visible top letter row

### Mac
`Q W E R T Y U I O P Š Đ`

### Lenovo
`Q W E R T Z U I O P Š Đ`

## Visible home row

Both keyboards visually use:
`A S D F G H J K L Č Ć Ž`

## Visible bottom letter row

### Mac
`Z X C V B N M`

### Lenovo
`Y X C V B N M`

This confirms the **QWERTY vs QWERTZ** split.

## Modifier row differences

### Mac physical order (left side)
`fn control option command`

### Lenovo physical order (left side)
`Ctrl Fn Win Alt`

This means there are two separate adaptation problems:

1. **printable character mapping**
2. **modifier / shortcut muscle memory**

## Important implication

A Karabiner modifier swap alone is **not enough**.
It improves shortcut behavior, but it does not solve the printable key mismatch caused by the Mac using a QWERTY Croatian base layout while the Lenovo uses QWERTZ.

## Target behavior for this repository

The repository should aim for both of these outcomes:

### 1. Printable character target
Make the Mac type like the Lenovo Windows Croatian keyboard:

- physical Mac `Y` key should produce Lenovo `Z` behavior
- physical Mac `Z` key should produce Lenovo `Y` behavior
- symbol keys should follow the Windows Croatian expectations as closely as practical
- Croatian letters (`Š Đ Č Ć Ž`) should remain natural and unchanged where already matching

### 2. Shortcut target
Make common shortcuts feel Windows-like:

- physical `Ctrl+C` copies
- physical `Ctrl+V` pastes
- physical `Ctrl+X` cuts
- physical `Ctrl+S` saves
- physical `Ctrl+Z` undoes

## Practical conclusion

The final solution needs **both**:

- a **custom `.keylayout`** for Lenovo-style Croatian QWERTZ printable output
- **Karabiner-Elements** rules for Windows-like modifier behavior on macOS

## Constraint

The printed legends on the Mac keyboard will still remain Apple QWERTY legends.
Software can make typing behavior match Lenovo, but it cannot change the physical printing on the keycaps.
