#!/bin/sh

if hash vim >/dev/null 2>&1; then
  exit 0
fi
sudo apt-get install -y vim vim-gtk ctags exuberant-ctags ncurses-term python-jinja2