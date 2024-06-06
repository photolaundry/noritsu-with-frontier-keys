# Frontier keybindings for Noritsu scanners
This AutoHotkey script lets you use Frontier-style keybindings while scanning on a Noritsu.

## Install
Install [AutoHotkey](https://www.autohotkey.com) (v2) first, and then download the `frontier_keys_for_noritsu.ahk` file.

To make the script auto-run when booting, move the script to your Startup folder in the Start Menu (press Windows+R and type `shell:startup` and hit Enter).

## Use
Double-click the `frontier_keys_for_noritsu.ahk` file to run it (or let it auto-run if you did that). By default, the script is inactive until you enable it with Ctrl+Shift+F. The keybindings are:
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
| Shift + R | reset all colors (back to N) aka Color Key Cancel |
| Ctrl + Shift + [Color Key] | reset just that color (back to N) |
| F2 | Rotate the image CCW (Needs EZController 8+) |
| Shift + F2 | Rotate all images 180 |
| Shift + Esc | quits the script entirely |

The keys above match the Frontier scanner's built-in keyboard layout, letting you use the same muscle memory if you use both scanners.

Also the Z and C keys can be used to bump up/down the sliders in the DSA menu.

# Customize
If you want the script to activate keybindings immediately rather than require a Ctrl+Shift+F to enable, delete the `Suspend` line at the end of the script.

If you would rather have the keys match the Noritsu's YMCD button order, and have Q go up and A go down, download and run the `quick_keys_for_noritsu.ahk` file instead.
