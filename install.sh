#!/bin/sh

echo "Starting install script..."

# Install Oh My Zsh
if test ! $(which omz); then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from our dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update the formulae and Homebrew itself
brew update

# Install Rosetta (required for Adobe Creative Cloud)
softwareupdate --install-rosetta --agree-to-license

# Install all our dependencies with bundle (our Brewfile)
brew tap homebrew/bundle
brew bundle

# Install global Composer packages
composer global require laravel/valet

# Install Laravel Valet (and trust)
valet install && sudo valet trust

# Create directories for projects
mkdir $HOME/local
mkdir $HOME/valet
mkdir $HOME/.nvm

cd $HOME/valet && valet park

echo "Install script complete."
