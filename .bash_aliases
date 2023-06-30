# ls
alias ls='ls -l --color=auto'
alias la='ls -la --color=auto'

# enable misc dircolors
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# add confirmation when rm/cp
alias rm="rm -i"
alias cp="cp -i"

# nmcli
alias wifi="nmcli device wifi"
alias conn="nmcli connection"

# apt
alias update="sudo apt update"
alias upgrade="sudo apt update && sudo apt upgrade"
alias upgradable="apt list --upgradable"

# dotfiles
alias cpdotfiles="rsync --files-from=/home/alliebeans/dotfiles /home/alliebeans/ /home/alliebeans/Public/dotfiles/"
alias cpdotconfig="rsync --files-from=/home/alliebeans/.config/dotconfig /home/alliebeans/.config/ /home/alliebeans/Public/dotfiles/dotconfig/"
