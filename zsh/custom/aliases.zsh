# -------
# Aliases
# -------
alias 🍺="git checkout -b drunk"
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
alias gca='git commit --amend --no-edit'
alias gcho='git checkout'

# ----------------------
# Dylan's Aliases
# ----------------------

function cd {
    builtin cd "$@" && ls -FA
}

function t {
    tree -aFC -I '.git' -L "${1:-2}"
}
alias tt="tree -aFC -I '.git'"

alias ssh151="ssh -t -X eecs151-aap@eda-7.eecs.berkeley.edu 'exec zsh -l' "
alias ssh161="ssh cs161-asj@hive25.cs.berkeley.edu"
alias sshwsl="ssh -t dreim@192.168.86.22 'wsl ~' "
alias chrome='f(){ /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --flag-switches-begin "$@" --flag-switches-end; unset -f f; }; f'
alias res='omz reload'
alias speed="/usr/bin/time zsh -i -c exit"
alias third-party-promote="~/.toolbox/bin/brazil-third-party-tool promote"
alias third-party="~/.toolbox/bin/brazil-third-party-tool"
alias auth="kinit -f && mwinit -o"
alias mcurl='curl -L --cookie ~/.midway/cookie --cookie-jar ~/.midway/cookie'

################ Brazil Related Aliases ##################
alias bb='brazil-build'
alias bbr='brazil-recursive-cmd --allPackages brazil-build'
alias bbc='brazil-build clean'

######### Workspace operations #########
alias bwv='brazil workspace --use --versionSet'
alias bws='brazil ws show'
alias bwp='brazil workspace --use --package'
alias bwrp='brazil workspace --remove --package'
alias p='package'
alias rp='rpackage'

# vpn
alias vpn='vpn-onetouch'
alias vpns='/opt/cisco/anyconnect/bin/vpn status'
alias vpnd='/opt/cisco/anyconnect/bin/vpn disconnect'
