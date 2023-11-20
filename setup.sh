cat ascii.txt
choice=-1

echo Choose dotfiles to be installed:
echo [1] Desktop
echo [2] Laptop
echo [3] Uninstall dotfiles

while true; do
    # Read input and store it in a variable
    read choice

    # Check the input
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
        echo "Wrong choice"
    fi
done
