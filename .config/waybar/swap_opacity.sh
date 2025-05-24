#!/bin/bash

# Path to your Alacritty config file
ALACRITTY_CONFIG="$HOME/.config/alacritty/alacritty.toml"
NVIM_TRANSPARENT_FILE="$HOME/.config/nvim/TRANSPARENT.env"

# Toggle opacity between 1 and 0.9
if grep -q '^opacity = 1$' "$ALACRITTY_CONFIG"; then
    sed -i 's/^opacity = 1$/opacity = 0.9/' "$ALACRITTY_CONFIG"
    echo "TRUE" > "$NVIM_TRANSPARENT_FILE"
    # echo ""
else
    sed -i 's/^opacity = 0.9$/opacity = 1/' "$ALACRITTY_CONFIG"
    echo "FALSE" > "$NVIM_TRANSPARENT_FILE"
    # echo ""
fi

