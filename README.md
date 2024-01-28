### To-do

# General
- populate laptop and 42 directories
    - Make stowing script for each one

# Terminal Multiplexer
- Try out ZelliJ
- Use the `finder` script i've made to achieve the following result:
    - When selecting something with `finder` it will check if there is already a window/tab whatever it is called in that place (dir/file). If it already exists, then just hop to that window/tab. If it does not exist, then creates a new window/tab opening that place (cd if a directory, vim if a file).
    - Rice it to have good visuals, that match both onedark and my alacritty appearence. The visuals must be minimal, the zelliJ bar must not cluster with nvim lualine.

# Status Bar
- Find a good status bar. Polybar is the most famous but I've herad it consumes too much memory for just a bar, and other famous options are wayland exclusive. [xmobar](https://codeberg.org/xmobar/xmobar) may be a good choice though. Other option is [eww](https://github.com/elkowar/eww), it has a more modern feeling.
### This bar must show:
- Workspaces (With same layout as i3wm, 1-3 in primary, 4-9 in secondary)
- Date and Time
- Volume Controler
- Apps (discord, flameshot, telegram etc.)
- Battery (only on notebook)
### Would be nice if it shows:
- Network connection
- Turn off / Reboot button
    
### Kickstart
```bash
git clone git@github.com:PedroDrago/.dotfiles.git && cd .dotfiles && bash setup
```
