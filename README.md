# ChildZ emulator

HOW TO USE
==========

To run the emulator, simply open to the link: 
[nippur72.github.io/ChildZ-emu](https://nippur72.github.io/ChildZ-emu/). 


KEYBOARD
========

A standard ASCII keyboard is emulated. 

- `Backspace` and `Delete` are swapped (they give `127` and `8` respectively)
- Left and Right Cursor keys are mapped to `<` and `>` (avalaible also via `Ctrl`+`,` and `Ctrl`+`.`)
- Ascii codes below 32 can be produced by `Ctrl` + letter or `Alt` + letter (because the browser prevent using some Ctrl keys)
- `NULL` is `Ctrl` + `0` or `Ctrl` + `@`
- `{` and `}` are `Ctrl` + `8` and `Ctrl` + `9`
- `LF` is `ù` on italian keyboard layout
- `Ctrl` + `Alt` + `P` powers on/off the machine

DEBUGGER
========
You can plug your own Javascript debug functions by defining 
`debugBefore()` and `debugAfter(elapsed)` in the JavaScript console.

`debugBefore` is executed before any Z80 instruction; `debugAfter` is executed
after the istruction and the number of occurred T-states is passed in the `elapsed` argument.

Within the debug functions you can access all the emulator variables, most likely 
you'll want to read the Z80 state with `cpu.getState()`. 

AUTOLOADING
=================
The emulator can be used in cross-development allowing to automate the process of 
loading and executing the program being developed. This will save lot of annoying drag&drops. 

To enable "autoload":
- clone the emulator on your local machine (it won't work in the online-version because of browser restrictions)
- in your compile chain (`make` etc..), copy the binary you want to execute in the emulator directory naming it `autoload.bin`
- execute `node makeautoload`, this will turn `autoload.bin` into JavaScript code (`autoload.js`).
- refresh the browser, the program will be loaded in memory and make it RUN

When you no longer want the file to be autoloaded, delete `autoload.bin` and run again `node makeautoload`.
