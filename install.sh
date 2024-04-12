#!/bin/bash

# Variables
desktop_file="screen-rotate.desktop"
script_file="screen-rotate.sh"
icon_file="icon-screen-rotate.png"
install_dir="$HOME/.local/share/steamdeck-screen-rotate"
desktop_file_dir="$HOME/.local/share/applications"
icon_file_dir="$HOME/.local/share/icons" 

# Create installation directory if it doesn't exist
mkdir -p "$install_dir"
mkdir -p "$icon_file_dir"

# Copy files
cp "$desktop_file" "$desktop_file_dir/"
cp "$script_file" "$install_dir/"
cp "$icon_file" "$icon_file_dir/"

# Set execute permissions for the script
chmod +x "$install_dir/$script_file"

echo "Installation completed."
