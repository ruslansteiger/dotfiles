#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  echo 'Installing Oh My Zsh'
  echo '------------'
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"

  echo 'Installing zsh plugins'
  echo '------------'
  git clone git@github.com:jessarcher/zsh-artisan.git ~/.dotfiles/plugins/artisan
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo 'Installing Homebrew'
  echo '------------'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Removes .vimrc from $HOME (if it exists) and symlinks the .vimrc file from the .dotfiles
rm -rf $HOME/.vimrc
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew bundle --file $DOTFILES/Brewfile

# Install PHP extensions with PECL
pecl install redis

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

echo 'Git setup'
echo '------------'
# Set user name
git config --global user.name "Ruslan Steiger"

# Set vim as default editor
git config --global core.editor "vim"

# Deactivate rebase on pull
git config --global pull.rebase false

# Add global gitignore
git config --global core.excludesfile ~/.dotfiles/.gitignore_global

# Register git hooks
git config --global core.hooksPath ~/.dotfiles/git-hooks

echo '☑️ Setting up your Mac done.'
