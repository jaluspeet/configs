#!/bin/bash

CONFIGS=Projects/configs

mkdir -p $HOME/.emacs.d && ln -sf $HOME/$CONFIGS/emacs/init.el $HOME/.emacs.d
ln -sf $HOME/$CONFIGS/git/.gitconfig $HOME
ln -sf $HOME/$CONFIGS/i3 $HOME/.config
ln -sf $HOME/$CONFIGS/kitty $HOME/.config
ln -sf $HOME/$CONFIGS/nvim $HOME/.config
ln -sf $HOME/$CONFIGS/zsh/.zshrc $HOME
ln -sf $HOME/$CONFIGS/vim/.vimrc $HOME/
mkdir -p $HOME/.ssh && ln -sf $HOME/$CONFIGS/ssh/config $HOME/.ssh
