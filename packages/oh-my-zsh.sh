#!/bin/sh
if [ ! -n "$ZSH" ]; then
    ZSH=~/.oh-my-zsh
fi
if [ ! -d "$ZSH" ]; then
    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi