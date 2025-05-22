#!/bin/bash

# Path to your Alacritty config file
CONFIG="$HOME/.config/alacritty/alacritty.toml"

# Toggle opacity between 1 and 0.9
if grep -q '^opacity = 1$' "$CONFIG"; then
    sed -i 's/^opacity = 1$/opacity = 0.9/' "$CONFIG"
    # echo ""
else
    sed -i 's/^opacity = 0.9$/opacity = 1/' "$CONFIG"
    # echo ""
fi
