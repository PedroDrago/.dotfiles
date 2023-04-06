#for each files which have to stay in $HOME
# stow --adopt -v file_with_configs

if test -f "$HOME/.zshrc"; then
  rm $HOME/.zshrc
fi

if test -f "$HOME/.p10k.zsh"; then
  rm $HOME/.p10k.zsh
fi

if test -f "$HOME/.config/i3/config";then
  rm $HOME/.config/i3/config
fi

if test -f "$HOME/.config/alacritty/alacritty.yml";then
  rm $HOME/.config/alacritty/alacritty.yml
fi

stow --adopt -v zsh
stow --adopt -v git

#for each file which have to stay in .config
# stow --adopt --target=$HOME/target_directory -v file_with_configs    
stow --adopt --target=$HOME/.config/i3 -v i3 
stow --adopt --target=$HOME/.config/alacritty -v alacritty



#each .dotfile have to be checked existence, and if exists: deleted. the following code does that
#if test -f "";then
# rm
#if
