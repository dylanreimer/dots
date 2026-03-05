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

alias chrome='f(){ /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --flag-switches-begin "$@" --flag-switches-end; unset -f f; }; f'
alias res='omz reload'
alias speed="/usr/bin/time zsh -i -c exit"
alias y='yt-dlp --cookies-from-browser firefox -f bestaudio -x --audio-format mp3 --add-metadata --embed-thumbnail --audio-quality 0 -o "/Users/dyr/Nextcloud/ableton/sounds (mac)/dls/%(title)s [%(id)s].%(ext)s"'
alias dj='yt-dlp -f bestaudio -x --audio-format mp3 --add-metadata --embed-thumbnail --audio-quality 0 -o "/Users/dyr/Nextcloud/music/2024/%(channel)s - %(title)s.%(ext)s"'
alias yt='yt-dlp --format "bestvideo[height<=1080][vcodec^=h264][ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best"'
alias balatro='cd /Users/dyr/Library/Application\ Support/Steam/steamapps/common/Balatro && sh run_lovely_macos.sh'
