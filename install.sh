#!/usr/bin/env bash
set -euo pipefail

mkdir -p "$HOME/Projects"
mkdir -p -m 755 "$HOME/.ssh"
ln -sf "$PWD/.ssh/allowed_signers" "$HOME/.ssh/allowed_signers"
ln -sf "$PWD/.ssh/config" "$HOME/.ssh/config"
ln -sf "$PWD/.Brewfile" "$HOME/.Brewfile"
ln -sf "$PWD/.gitconfig" "$HOME/.gitconfig"
ln -sf "$PWD/.gitignore" "$HOME/.gitignore"
ln -sf "$PWD/.zprofile" "$HOME/.zprofile"

which brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --global check || brew bundle --global

gh auth status || gh auth login --git-protocol https --hostname github.com --web
