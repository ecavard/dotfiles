#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"

# Install Stow if missing
if ! command -v stow &>/dev/null; then
    echo "Installing Stow..."
    sudo apt install stow -y
fi

# Change to dotfiles directory
cd "$DOTFILES_DIR" || exit

# Stow configurations
stow zsh
stow git

echo "Dotfiles successfully setup!"
