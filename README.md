# dotfiles

- [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)

## Setup Script

```
curl -sL git.io/nella17-setup.sh | bash
```

## Setup on Linux

```
sudo apt install -y tmux vim curl mtr net-tools unzip zip netcat nmap git zsh
curl -sL git.io/nella17-setup.sh | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install --lts
vim +PlugInstall +qall
zsh ~/.zim/zimfw.zsh install
chsh -s `which zsh`
```
