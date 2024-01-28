#!/bin/bash

# Get the directory where the script is located
script_directory=$(dirname "$(readlink -f "$0")")

# Check if the target directory exists
if [ ! -d "$script_directory" ]; then
    echo "Error: The script directory does not exist."
    exit 1
fi

# Get the name of the installing script
install_script_name=$(basename "$0")

# Loop through all scripts in the directory
for script in "$script_directory"/*; do
    # Check if it's a regular file, executable, and not the installing script
    if [ -f "$script" ] && [ -x "$script" ] && [ "$(basename "$script")" != "$install_script_name" ]; then
        # Extract script name without the path
        script_name=$(basename "$script")

        # Create a symlink in /usr/bin/
        sudo ln -s "$script" "/usr/bin/$script_name"

        echo "Symlink created for: $script_name"
    fi
done

echo "All symlinks created successfully."
