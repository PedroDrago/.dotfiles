### Kickstart
```bash
git clone --recurse-submodules git@github.com:PedroDrago/.dotfiles.git && cd .dotfiles && ./install

```

### My Tools
- **Distro**: [Debian](https://www.debian.org/)
- **Terminal**: [Alacritty](https://github.com/alacritty/alacritty)
- **shell**: [zsh](https://www.zsh.org/) with [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) and [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- **Tiling Manager**: [i3wm](https://i3wm.org/)
- **Text Editor**: [Neovim](https://github.com/neovim/neovim)

### Todo
# Terminal Multiplexer
- Create a good framework for using tmux

# i3
- a good script/config for deciding/default_working when this config is the default 2 monitor one, or a single monitor one (this is only needed for the i3status bars). I believe the solution is to have 2 files `single_monitor_config` and `double_monitor_config`, then adding i3/i3status to stowignore, checking if the current config is 1 or 2 monitor and then symlinking it manually change the appropriate name, i.e., `ln -s $HOME/.dotfiles/.config/i3/single_monitor/config $HOME/.config/i3/config`. probably will need to create the directory in this case `mkdir -p $HOME/.config/i3`

# Vscode
- Good stable vscode configuration (almost done. Just lacking a few vim bindings)

# Idea
- Good vim configuration for intelliJ Idea
