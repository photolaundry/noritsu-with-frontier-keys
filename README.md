# Frontier keybindings for Noritsu scanners
This AutoHotkey script lets you use Frontier-style keybindings while scanning on a Noritsu.

## Install
Install [AutoHotkey](https://www.autohotkey.com) (v2) first, and then download [this file](frontier_keys_for_noritsu.ahk).

To make the script auto-run when booting, move the script to your Startup folder in the Start Menu (press Windows+R and type `shell:startup` and hit Enter).

## Use
Double-click the `frontier_keys_for_noritsu.ahk` file to run it (or let it auto-run if you did that). By default, the script has no effect until you enable it with `Ctrl+Shift+F`. The full list of keybindings are:
| Key | Effect |
|-----|--------|
| Ctrl + Shift + F | enable/disable these keybindings |
| Q | -C |
| A | +C |
| W | -M |
| S | +M |
| E | -Y |
| D | +Y |
| Z | -D |
| X | N (reset density) |
| C | +D |
| Shift + [Color/Density Key] | same as that key, but bump by 3 rather than 1 |
| Alt + [Color/Density Key] | reset just that color/density (back to N) |
| Ctrl + Shift + [Color/Density Key] | copy that color/density to all following frames |
| Shift + R | reset all colors (back to N) aka Color Key Cancel |
| Alt + R | reset all colors and density (back to N) |
| V | PASS |
| Shift + V | All PASS |
| Space | HOLD |
| F2 | Rotate the image 90 CCW (Needs EZController 8+) |
| Shift + F2 | Rotate all images 180 |
| Shift + Esc | quits the script entirely |

The keys above match the Frontier scanner's built-in keyboard layout, letting you use the same muscle memory if you use both scanners.

Also, the [Z] and [C] keys can be used to bump up/down the sliders in the DSA menu.

## Alternate bindings
If you would rather have the keys match the Noritsu's YMCD button order, and have Q go up and A go down, download and run [this file](quick_keys_for_noritsu.ahk) instead. The keybindings are:

| Key | Effect |
|-----|--------|
| Ctrl + Shift + N | enable/disable these keybindings |
| Q | +Y |
| A | -Y |
| W | +M |
| S | -M |
| E | +C |
| D | -C |
| R | +D |
| F | -D |
| Shift + [Color/Density Key] | Same as that key, but bump by 3 rather than 1 |
| Alt + [Color/Density Key] | reset that color/density (back to N) |
| Ctrl + Shift + [Color/Density Key] | copy that color/density to all following frames |
| Shift + X | reset all colors (back to N) aka Color Key Cancel |
| Alt + X | reset all colors and density |
| V | PASS |
| Shift + V | All PASS |
| Space | HOLD |
| F2 | Rotate the image 90 CCW (Needs EZController 8+) |
| Shift + F2 | Rotate all images 180 |
| Shift + Esc | quits the script entirely |

Also, the [Q][W][E][R] and [A][S][D][F] keys can be used to bump up/down the sliders in the DSA menu.

## Printable reference cards
In the `printouts` directory, there are 2 PDFs you can print for quick reference (4x6 size), one for [Frontier style](printouts/noritsu-with-frontier-keys.pdf) and one for [Noritsu style](printouts/noritsu-quick-keys.pdf).
