cat ascii.txt | lolcat
choice=-1

echo Choose dotfiles to be installed:
echo [1] Desktop
echo [2] Laptop
echo [3] 42
echo [4] Uninstall dotfiles

while true; do
    read choice
    if [ "$choice" -eq 1 ]; then
        echo "Installing Desktop dotfiles"
        bash desktop/stow_script.sh
        echo "done"
        break
    elif [ "$choice" -eq 2 ]; then
        echo "Installing Laptop dotfiles"
        bash laptop/stow_script.sh
        echo "done"
        break
    elif [ "$choice" -eq 3 ]; then
        echo "Installing 42 dotfiles"
        bash 42/stow_script.sh
        echo "done"
        break
    elif [ "$choice" -eq 4 ]; then
        echo "Uninstalling dotfiles"
        echo "done"
        if test -f "$HOME/.zshrc"; then
            rm $HOME/.zshrc
        fi

        if test -f "$HOME/.p10k.zsh"; then
            rm $HOME/.p10k.zsh
        fi

        if test -d "$HOME/.config/nvim";then
            rm -rf $HOME/.config/nvim
        fi

        if test -d "$HOME/.config/i3";then
            rm -rf $HOME/.config/i3
        fi

        if test -d "$HOME/.config/alacritty";then
            rm -rf $HOME/.config/alacritty
        fi
        break
    else
        echo "Invalid input"
    fi
done
