#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# unlimited history
HISTSIZE=-1
HISTFILESIZE=-1

# prompt
PS1='$ '

# vi readline editing mode
set -o vi

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
alias gst='git status --short'
alias gad='git add'
alias grm='git rm'
alias gco='git checkout'
alias gbr='git branch'
alias gdf='git diff'
alias glg='git log'
alias gmv='git mv'
alias gbl='git blame'
alias gmg='git merge'

# GPG in mutt
export GPG_TTY=$(tty)

# "grey" Java Swing applications (IntelliJ, NetBeans)
export _JAVA_AWT_WM_NONREPARENTING=1

# Task Warrior
alias tad='task add'
alias tdn='task done'
alias tdl='task delete'
alias tmf='task modify'
alias ted='task edit'
function trs() {
    # task reset
    git -C ~/.task checkout -- * || return 1
}
function tup() {
    # task update
    git -C ~/.task pull || return 1
}
function tps() {
    # task push
    git -C ~/.task add ~/.task/*.data || return 1
    git -C ~/.task commit -m 'update' || return 1
    git -C ~/.task push || return 1
}

# edit all files with content matching a pattern (using rg and vim)
function virg() {
    files="$(rg -il $1 | tr '\n' ' ')"
    if [ -z "$files" ]
    then
        return
    fi
    vim -p $files
}
