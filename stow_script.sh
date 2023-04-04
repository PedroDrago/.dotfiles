#for each files which have to stay in $HOME
# stow --adopt -v file_with_configs
stow --adopt -v zsh
stow --adopt -v git


#for each file which have to stay in .config
# stow --adopt --target=$HOME/target_directory -v file_with_configs    
stow --adopt --target=$HOME/.config/i3 -v i3 
stow --adopt --target=$HOME/.config/alacritty -v alacritty