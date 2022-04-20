![Another example of the current desktop](wallpapers/current.bmp)

# CMD (Windows Config)

Windows configuration files that live in `C:\cmd` for me, hence the name.

## Installation

I used to use a script to install (it's in the
`tools\archive` folder, called `windot.bat`) but
it wasn't good and below is just far easier... Run
CMD then;

`cd \`

`git clone https://github.com/julianorchard/cmd cmd`

`cmd\tools\fixpath.bat`

I don't swap Windows machines very often, so this
is totally fine. `cd tools\` and run `add-path.bat` to get started. From here,
refresh the environment (taken from Chocolatey) using `bin\refresh.bat` and
just add all the important folders to PATH.

## Features

Some of the folders don't contain much interesting stuff, but I'll mention some
of the most used/important scripts below: 

### AutoHotkey (`\ahk`)

There's quite a lot in this folder, but it's mainly all in `General.ahk`; feel
free to have a read of the file as it's *fairly* well annotated. Some of the
features of this file include: 

- Drawing boxes around stuff with `Alt + B`, and
    underline stuff with `Alt + U` (*very* useful for the
    snipping tool)
- Insert date/time and random underline stuff,
    sign emails etc.
- Run certain folders with `Alt + E`, to replicate
    the normal Windows `Start + E` functionality,
    but better (e.g. `Alt + E` then `C` opens `C:\Users\USER\`)
- Disable Keyboard and Mouse clicking, and refresh the screen to bypass screen
lock IT Policy with `Alt + L` (for Lock) and `Alt + I` (for Idle)

### Hours (`\hours`)

![usage of cl command](screenshot.png)

This is a VBScript program that writes my hours to a CSV file and just lets me
track hours worked very easily from the command line. More information is in the
folder.

### Language Folders

This repo mainly contains Batch, Powershell,
AutoHotkey, and some Shell/Ruby/Unix-y scripts: 

#### AutoHotkey (`\ahk`)

There's quite a lot in this folder, but it's mainly all in `General.ahk`; feel
free to have a read of the file as it's *fairly* well annotated. Some of the
features of this file include: 

- Drawing boxes around stuff with `Alt + B`, and
    underline stuff with `Alt + U` (*very* useful for the
    snipping tool)
- Insert date/time and random underline stuff,
    sign emails etc.
- Run certain folders with `Alt + E`, to replicate
    the normal Windows `Start + E` functionality,
    but better (e.g. `Alt + E` then `C` opens `C:\Users\USER\`)

#### Batch Scripts (`\bat`)

Unsurprisingly, `\bat` mainly contains Batch
Scripts, including: 

- `amiconnected.bat`, checks network connection
via ping; notifies when connection seems to be
reestabilshed (using `\bin\msgBox.vbs`)

- `drives.bat` and `shortcut.bat` map shortcuts to
be placed in a folder (gitignored
`\cmd\shortcuts`) to quickly navigate around using
CMD

- `numbereddomainsearch.bat`, searches numerical
with numbers in to find out how many of them are
pingable

#### Shell/Unix-y Scripts (`\sh`)

More recently I've been using Mintty more than
CMD/Powershell, and as a result, I've been writing
more Unix-y scripts. This is where they're stored. 

- `tidy`, a Ruby script I use to rename files that
have been mauled by Windows File Explorer's bulk
renaming...

### Wallpapers ([\wallpapers](https://github.com/julianorchard/cmd/tree/main/wallpapers))

A few nice scripts to manage my wallpapers. Wallpapers aren't in this repo
(there's some examples, as above). A Powershell
Script adds text to the image at `current.jpg` and
saves and sets it as `current.bmp`.

