### Kickstart single monitor
```bash
git clone --recurse-submodules git@github.com:PedroDrago/.dotfiles.git && cd .dotfiles && ./install
```

### Todo
1. first step: reinstall arch setting btrfs and timeshift for snapshots. also take the oportunity to validate setup steps and dotfiles.
# Terminal Multiplexer
- Create a good framework for using tmux

# Shell 
- Fix shell flickering on startup

# Rofi / Wofi
1. arbitrary web search with ! or ?
1. style
    - theme
    - remove "drun" from start


# install/uninstall scripts
- automate uninstall script. Probably using stow for remove is a good ideal

# hyprland
- tune animations: make them shorter, almost instant but still smooth

# greeter
- rice greeter to more minimal

# wallpapers
- have two, one more dark and one mor light || have cycling lofi landscaps

# waybar
- power button menu?
- mahchine stats? cpu, ram, tmp.

# bluetooth
- i dont even tested if it is working

# stable configs for multiple WM
-i already have an ultra stable i3wm config, so i have a safe ground in X11, but i need to have an stable config in wayland too becausa hyprland is not stable. the way is to have a sway config that mirrors my i3wm config, ive tries to use my i3wm config file and it got 90% ready, but not 100%. Would be good to have a default WM also so that common folk can use my desktop, like gnome, kde etc.

needs to study WM better, because idk if have all the WM tookits installed will bloat or create conflict in my system, so i need to study qt, gtk etc. does X11 services stop when i run wayland? definitely needs to study...

# Snapshots on grub
Allow to boot on btrfs snapshots via grub

