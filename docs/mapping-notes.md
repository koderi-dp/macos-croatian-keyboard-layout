# Mapping notes

## Objective

Make a Mac keyboard behave as closely as practical to a Lenovo Windows laptop for a Croatian user.

This repository currently focuses on the part that matters most for day-to-day usage:

- shortcut muscle memory
- modifier placement
- preserving Croatian printable character entry through the selected macOS input source

## Recommended macOS input source

First test the built-in Croatian input source variants available on your macOS version.

The ideal base layer is the one that gives you the expected printable characters for your Lenovo Croatian keyboard, especially:

- `z` and `y`
- `@`
- `[` and `]`
- `{` and `}`
- `\\`
- `/`
- diacritics and quote keys

If built-in input sources already match, do not add extra complexity. Keep the input layer simple and only fix modifier behavior with Karabiner.

## Why Karabiner is used

macOS applications mostly use the Command modifier for app shortcuts.

Windows users expect the physical Ctrl key to do that work.

Swapping physical Control and Command is the cleanest way to make these shortcuts feel like Windows on a Mac keyboard without breaking Croatian character entry.

## Expected effect after enabling the rule

Physical key behavior on a Mac keyboard:

- `Ctrl+C` copies
- `Ctrl+V` pastes
- `Ctrl+X` cuts
- `Ctrl+A` selects all
- `Ctrl+S` saves
- `Ctrl+Z` undoes

while:

- `Option` stays available for symbol entry and Alt-like use
- `Right Option` can remain useful for AltGr-style character entry depending on the selected Croatian input source

## What is not solved yet

A custom `.keylayout` file is not included yet.

That should only be added if the built-in Croatian variants still do not match Lenovo printable character placement exactly.

At that point the repository can be extended with:

- `Croatian - Lenovo PC.keylayout`
- matching icon file
- installation instructions for `~/Library/Keyboard Layouts/` or `/Library/Keyboard Layouts/`
