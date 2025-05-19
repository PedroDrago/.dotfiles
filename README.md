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
- 

# bluetooth
- i dont even tested if it is working

# unify dotfiles
- currently arch dotfiles are in this arch branch, but there is no need for separating, i need to make my enviroments more standard and have the same dotfiles everywhere, what to do:
    - make the tools binary to have a standard name, for example, in debian i install fdfind and ripgrep via apt so it comes with fdfind and ripgrep name or something like that, im arch i use cargo i believe (maybe i couls install with pacman or yay idk) and it have fd and rg names, so alias, scripts and nvim telescope have it hardcoded.


# test hyprland support in my nvidia desktop
- if hyprland works well on nvidia I can use it in both machines

# improove citrix
- if i can find a way to make citrix very stable i can move from using debian in desktop to arch. maybe dont need to be very good because in desktop i will always have a dual boot with windows so it is a safe zone.

# stable configs for multiple WM
-i already have an ultra stable i3wm config, so i have a safe ground in X11, but i need to have an stable config in wayland too becausa hyprland is not stable. the way is to have a sway config that mirrors my i3wm config, ive tries to use my i3wm config file and it got 90% ready, but not 100%. Would be good to have a default WM also so that common folk can use my desktop, like gnome, kde etc.

needs to study WM better, because idk if have all the WM tookits installed will bloat or create conflict in my system, so i need to study qt, gtk etc. does X11 services stop when i run wayland? definitely needs to study...

# Snapshots on arch
would be nice to have snapshots of my arch system using btrfs and timeshift. I think i would need more storage to manage that, but the goal is to have a snapshot to a clean arch install and one to latest stable config.
