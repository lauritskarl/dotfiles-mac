#!/usr/bin/env bash
set -euo pipefail

mkdir -p -m 755 "$HOME/.ssh"
mkdir -p "$HOME/.config/git"
mkdir -p "$HOME/.config/fish/conf.d"
mkdir -p "$HOME/.config/fish/functions"
mkdir -p "$HOME/.config/ghostty"
mkdir -p "$HOME/Projects"

ln -sf "$PWD/.Brewfile" "$HOME/.Brewfile"
ln -sf "$PWD/.zprofile" "$HOME/.zprofile"
ln -sf "$PWD/.config/git/config" "$HOME/.config/git/config"
ln -sf "$PWD/.config/git/ignore" "$HOME/.config/git/ignore"
ln -sf "$PWD/.ssh/config" "$HOME/.ssh/config"
ln -sf "$PWD/.ssh/allowed_signers" "$HOME/.ssh/allowed_signers"
ln -sf "$PWD/.config/fish/conf.d/config.fish" "$HOME/.config/fish/conf.d/config.fish"
ln -sf "$PWD/.config/fish/functions/lg.fish" "$HOME/.config/fish/functions/lg.fish"
ln -sf "$PWD/.config/ghostty/config" "$HOME/.config/ghostty/config"

which brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --global check || brew bundle --global

gh auth status || gh auth login --git-protocol https --hostname github.com --web
