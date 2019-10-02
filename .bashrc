#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# history
HISTSIZE=-1
HISTFILESIZE=-1

# optics
alias ls='ls --color=auto'
PS1='$ '

# golang
export GOROOT='/usr/lib/go'
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN:$HOME"

# Node.js
export NPM_PACKAGES="$HOME/.npm-packages/bin"
export PATH="$PATH:$NPM_PACKAGES"

# tmux
alias t='tmux'

# git
alias gin='git init'
alias gcl='git clone'
alias gpl='git pull'
alias gps='git push'
alias gcm='git commit'
alias gst='git status'
alias gad='git add'
alias grm='git rm'
alias gco='git checkout'
alias gbr='git branch'
alias gdf='git diff'
alias glg='git log'
alias gmv='git mv'
alias gbl='git blame'

# readline editing mode
set -o vi

# GPG in mutt
export GPG_TTY=$(tty)

# Java Swing applications (IntelliJ)
export _JAVA_AWT_WM_NONREPARENTING=1
