# shell
if command -v trash &> /dev/null; then
  alias rm='trash'
else
  alias rm='rm -i'
fi
if command -v exa &> /dev/null; then
  alias ls='exa'
fi
#alias cat='bat'
#alias i='command -v'
alias i='where'
alias ii='command -v'
alias l='ls -ahl'
alias md='mkdir -p'
alias dh='dirs -v'

function swap() {
    local TMPFILE=$(mktemp)
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}
function rv() {
    >&2 echo -n "$1 : "
    read x
    echo $x
}

# alias
alias aaa='vi ~/.alias_me.sh && ra'
alias ra='source ~/.alias_me.sh'

# network
alias t-ssh-github='ssh -T git@github.com'
alias t-internet='ping -o 1.1.1.1'

# compile
alias rc=run_c

# git
if command -v hub &> /dev/null; then
  alias git='hub'
fi
alias dotfiles='git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME'
function dotfiles-update() {
  dotfiles pull
  cat $HOME/.gitignore_home | while read f; do
    rm -f $HOME/$f
    dotfiles update-index --assume-unchanged $HOME/$f
  done
}

alias edit-hosts='sudo /usr/bin/vim --clean -Z /etc/hosts'

# macOS only
if [ "$(uname -s)" = "Darwin" ]; then
  # reset
  alias rt='zsh --login'
  alias rtheme='source ~/.zshloadtheme'
  alias rf='killall SystemUIServer'
  alias rlogout='sudo pkill loginwindow'
  alias restart='sudo shutdown -r now'
  alias rsleep="osascript -e 'tell application \"System Events\" to sleep'"

  #app
  alias typora='open -a Typora'
  # alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
  # alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
  # alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"
  alias tldr='tldr -t base16'
  alias ida='open -a "/Applications/IDA Pro 7.0/ida.app"'
  alias ida64='open -a "/Applications/IDA Pro 7.0/ida64.app"'
  alias cutter='open -a /Applications/Cutter.app'
  alias hopper='open -a "/Applications/Hopper Disassembler v4.app"'

  # xcode
  alias xcode_simulator_video='xcrun simctl io booted recordVideo'
fi
