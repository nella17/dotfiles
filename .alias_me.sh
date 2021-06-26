# shell
alias rm='trash'
alias ls='exa'
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

# reset
alias rt='zsh --login'
alias rtheme='source ~/.zshloadtheme'
alias rf='killall SystemUIServer'
alias rlogout='sudo pkill loginwindow'
alias restart='sudo shutdown -r now'
alias rsleep="osascript -e 'tell application \"System Events\" to sleep'"

# network
alias t-ssh-github='ssh -T git@github.com'
alias t-internet='ping -o 1.1.1.1'

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

#xcode
alias xcode_simulator_video='xcrun simctl io booted recordVideo'
alias rc=run_c

# git
alias git='hub'
alias config='git --git-dir=$HOME/.dotfiles/.git/ --work-tree=$HOME'

alias edit-hosts='sudo /usr/bin/vim --clean -Z /etc/hosts'
