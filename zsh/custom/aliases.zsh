# -------
# Aliases
# -------
alias 🍺="git checkout -b drunk"
alias a='code .'
alias c='code .'
alias reveal-md="reveal-md --theme night --highlight-theme hybrid --port 1337"
alias ns='npm start'
alias start='npm start'
alias nr='npm run'
alias run='npm run'
alias nis='npm i -S'
alias l="ls -AF" # List files, sorted and full
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias b="cd .." #go back a directory
alias bb="cd ../.." #go back two directories

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status -s'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'

# ----------------------
# Dylan's Aliases
# ----------------------

function cd {
    builtin cd "$@" && ls -FA
}

function

alias ssh151="ssh -t -X eecs151-aap@eda-7.eecs.berkeley.edu 'exec zsh -l' "
alias ssh161="ssh cs161-asj@hive25.cs.berkeley.edu"
alias sshwsl="ssh -t dreim@192.168.86.22 'wsl ~' "
alias chrome='f(){ /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --flag-switches-begin "$@" --flag-switches-end; unset -f f; }; f'
alias res='omz reload'
alias speed="/usr/bin/time zsh -i -c exit"
alias third-party-promote="~/.toolbox/bin/brazil-third-party-tool promote"
alias third-party="~/.toolbox/bin/brazil-third-party-tool"
alias auth="mwinit -o"
alias bs="brazil ws show"
