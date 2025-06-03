### Kickstart
```bash
git clone --recurse-submodules git@github.com:PedroDrago/.dotfiles.git && cd .dotfiles && ./install
```

### Todo

# Terminal Multiplexer
- Create a good framework for using tmux

# Rofi / Wofi
1. arbitrary web search with ! or ?
1. style
    - theme
    - remove "drun" from start

# hyprland
- tune animations: make them shorter, almost instant but still smooth

# greeter
- rice greeter to more minimal

# Snapshots on grub
Allow to boot on btrfs snapshots via grub

# Full migration to sway
When nvidia have good open source drivers that allow wayland to work on it I can completely remove all X11 dependencies from setup. The dotfiles have no need to be deleted, but would be nice to not have to manage i3wm config alongside to sway, and also to not need to install X11 stuff.

Other alternative is to next time buy an AMD GPU.
