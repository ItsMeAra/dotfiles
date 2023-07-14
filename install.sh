#!/bin/zsh

zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

git clone --depth=1 git@github.com:itsmeara/dotfiles.git ~/.dotfiles

cd ~/.dotfiles

cat brew.txt | xargs brew install

zsh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

stow bash
stow zsh
stow git

cat brew-cask.txt | xargs brew install --cask

cat npm.txt | xargs npm install -g
