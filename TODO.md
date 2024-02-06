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
    
# Terminal Multiplexer
- Decide whether to stick with Tmux or ZelliJ. The focus should be finding the easiest one to integrate with my workflow, and that is based on two things:
1. The ability to jump between "terminals" with just 2 keystrokes, the same way I can do with i3, or neovim. CTRL+1, CTRL+2, CTRL+3 etc. should jump me to the right terminal.
2. The ability to integrate with my [Finder](./scripts/finder) script to create a good workflow: When using finder and selecting something, it will see if there is already a terminal named like that, if it has, then it will just jump to that terminal, if not it will create a new tmux/zelliJ terminal, named with the selected directory/file. Preferably if it is a directory, it will launch a Tmux/zelliJ terminal in that place, and if it is a file, it will launch the terminal in that file directory then open the file in `nvim`
