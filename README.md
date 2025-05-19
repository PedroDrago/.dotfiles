### Kickstart single monitor
```bash
git clone --recurse-submodules git@github.com:PedroDrago/.dotfiles.git && cd .dotfiles && ./install
```

### Todo
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
