#!/bin/bash

set -eu


# Check OS
if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi


# Install Rosetta 2 for Apple Silicon
if [ "$(uname -m)" = "arm64" ] ; then
  /usr/sbin/softwareupdate --install-rosetta --agree-to-license
fi

# Install Homebrew
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "Install brew successfully!"
  brew install cask
  echo "Install brew cask successfully!"
fi

## Install fish
if ! command -v fish >/dev/null 2>&1; then
    echo "Installing fish..."
    brew install fish
fi

## Install mise
if ! command -v mise >/dev/null 2>&1; then
    echo "Installing mise..."
    brew install mise
fi

## Install wezterm
if ! command -v wezterm >/dev/null 2>&1; then
    echo "Installing wezterm..."
    brew install --cask wezterm
fi

printf '%s\n' $fish_user_paths
