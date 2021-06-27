#!/usr/bin/env bash
set -ux
git clone https://github.com/nella17/dotfiles.git --bare $HOME/.dotfiles/.git
dotfiles() {
  git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME $@
}
dotfiles checkout
if [ $? != 0 ]; then
  d=$HOME/.old-config
  mkdir $d
  dotfiles checkout 2>&1 | tail -n +2 | head -n -2 | awk {'print $1'} | xargs -I{} mv $HOME/{} $d/{}
  dotfiles checkout
fi
dotfiles config status.showUntrackedFiles no
cat .gitignore_home | git update-index --assume-unchanged --stdin
