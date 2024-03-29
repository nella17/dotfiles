#!/usr/bin/env bash
set -ux
git clone https://github.com/nella17/dotfiles.git --bare $HOME/.dotfiles/.git
git init $HOME/.dotfiles
dotfiles() {
  git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME $@
}
dotfiles checkout
if [ $? != 0 ]; then
  d=$HOME/.old-config
  mkdir $d
  dotfiles checkout 2>&1 | tail -n +3 | head -n -2 | while read f; do
    mkdir -p $(dirname $d/$f)
    mv $HOME/$f $d/$f
  done
  dotfiles checkout
fi
dotfiles config status.showUntrackedFiles no
cat $HOME/.gitignore_home | while read f; do
  mv $HOME/$f $HOME/.dotfiles/$f
  dotfiles update-index --assume-unchanged $HOME/$f
done
