#!/bin/zsh

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# nvim
ln -s ${BASEDIR}/nvim ~/.config/nvim
# i3
ln -s ${BASEDIR}/i3 ~/.config/i3
