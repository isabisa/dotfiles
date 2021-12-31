#!/bin/sh

echo "Starting install script..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from our dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update the formulae and Homebrew itself
brew update

# Install Rosetta (required for Adobe Creative Cloud
softwareupdate --install-rosetta --agree-to-license

# Install all our dependencies with bundle (our Brewfile)
brew tap homebrew/bundle
brew bundle

# Install global Composer packages
/usr/local/bin/composer global require laravel/valet

# Create directories for projects
mkdir $HOME/local
mkdir $HOME/valet

echo "Install script complete."
