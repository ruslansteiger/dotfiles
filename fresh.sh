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

#https://github.com/driesvints/dotfiles/blob/main/fresh.sh

#https://github.com/okaufmann/dotfiles/blob/master/bootstrap
#https://github.com/okaufmann/dotfiles/blob/master/installscript
