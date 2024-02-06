### To-do

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
git clone --recurse-submodules git@github.com:PedroDrago/.dotfiles.git && cd .dotfiles && ./install

```
