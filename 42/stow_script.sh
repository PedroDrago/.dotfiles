#each .dotfile have to be checked existence, and if exists: deleted
if test -f "$HOME/.zshrc"; then
  rm $HOME/.zshrc
fi

if test -f "$HOME/.gitconfig"; then
  rm $HOME/.gitconfig
fi

if test -f "$HOME/.p10k.zsh"; then
  rm $HOME/.p10k.zsh
fi

if test -d "$HOME/.config/nvim";then
  rm -rf $HOME/.config/nvim
fi

#for each file that need to stay in home
stow --adopt --target=$HOME -v zsh
stow --adopt --target=$HOME -v git
#stow -D dir (ex: stow -D git) //to unstow

#for each directory which have to stay in .config
stow --adopt --target=$HOME/.config -v vim
