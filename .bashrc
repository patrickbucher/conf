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

# Node.js
export NPM_PACKAGES="$HOME/.npm-packages/bin"

# Path
export PATH="$PATH:$NPM_PACKAGES:$GOBIN:$HOME/bin"

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
alias gmg='git merge'

# readline editing mode
set -o vi

# GPG in mutt
export GPG_TTY=$(tty)

# Java Swing applications (IntelliJ)
export _JAVA_AWT_WM_NONREPARENTING=1

# edit all files with content matching a pattern (using rg and vim)
function virg() {
    files="$(rg -il $1 | tr '\n' ' ')"
    if [ -z "$files" ]
    then
        return
    fi
    vim -p $files
}
