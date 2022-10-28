# dotfiles

- [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)

## Setup Script

```sh
curl -sL key.nella17.tw | bash -x
curl -sL git.io/nella17-setup.sh | bash
```

## Setup on Linux

```sh
sudo apt install -y tmux vim curl git zsh htop
curl -sL key.nella17.tw | bash -x
curl -sL git.io/nella17-setup.sh | bash -x
vim +PlugUpdate +qall
zsh ~/.zim/zimfw.zsh install
sudo chsh -s `which zsh` $USER
# optional packages
sudo apt install -y mtr net-tools unzip zip netcat nmap nload cloc
```

nvm

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.nvm/nvm.sh
nvm install --lts
```
