#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  echo 'Installing Oh My Zsh'
  echo '------------'
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

echo 'Installing zsh plugins'
echo '------------'
git clone git@github.com:jessarcher/zsh-artisan.git ~/.dotfiles/plugins/artisan

#https://github.com/driesvints/dotfiles/blob/main/fresh.sh

#https://github.com/okaufmann/dotfiles/blob/master/bootstrap
#https://github.com/okaufmann/dotfiles/blob/master/installscript
