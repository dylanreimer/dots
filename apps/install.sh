#!/usr/bin/env bash
#
# installs apps and their configs

# -----------------------------------

DIR="$PWD"
cd "$(dirname $0)"/..
DOTS=$(pwd -P)

set -e

echo ''

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

user () {
  printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

link_file () {
  local src=$1 dst=$2

  local overwrite= backup= skip=
  local action=

  if [ -f "$dst" -o -d "$dst" -o -L "$dst" ]
  then

    if [ "$overwrite_all" == "false" ] && [ "$backup_all" == "false" ] && [ "$skip_all" == "false" ]
    then

      local currentSrc="$(readlink $dst)"

      if [ "$currentSrc" == "$src" ]
      then

        skip=true;

      else

        user "File already exists: $dst ($(basename "$src")), what do you want to do?\n\
        [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all?"
        read -n 1 action

        case "$action" in
          o )
            overwrite=true;;
          O )
            overwrite_all=true;;
          b )
            backup=true;;
          B )
            backup_all=true;;
          s )
            skip=true;;
          S )
            skip_all=true;;
          * )
            ;;
        esac

      fi

    fi

    overwrite=${overwrite:-$overwrite_all}
    backup=${backup:-$backup_all}
    skip=${skip:-$skip_all}

    if [ "$overwrite" == "true" ]
    then
      rm -rf "$dst"
      success "removed $dst"
    fi

    if [ "$backup" == "true" ]
    then
      mv "$dst" "${dst}.backup"
      success "moved $dst to ${dst}.backup"
    fi

    if [ "$skip" == "true" ]
    then
      success "skipped $src"
    fi
  fi

  if [ "$skip" != "true" ]  # "false" or empty
  then
    ln -s "$1" "$2"
    success "linked $1 to $2"
  fi
}

# -----------------------------------

linker () {

  local overwrite_all=false backup_all=true skip_all=false

  info 'vscode'
  
  info 'iterm'
  # brew install --cask iterm2

  info 'intellij'

  info 'soundsource'

  info 'spotify'
  # brew install --cask spotify

  info '1password'
  # brew install --cask 1password

  info 'alfred'
  #brew install --cask alfred
  #link_file "$DIR/alfred/Alfred.alfredpreferences" "$HOME/Library/Application Support/Alfred/Alfred.alfredpreferences"

  info 'alt-tab'
  #brew install --cask alt-tab
  #link_file "$DIR/alt-tab/com.lwouis.alt-tab-macos.plist" "$HOME/Library/Preferences/com.lwouis.alt-tab-macos.plist"

  info 'istatmenus'
  # brew install --cask istat-menus

  info 'linearmouse'
  #brew install --cask linearmouse
  #link_file "$DIR/linearmouse/linearmouse.json" "$HOME/.config/linearmouse/linearmouse.json"
  #link_file "$DIR/linearmouse/com.lujjjh.LinearMouse.plist" "$HOME/Library/Preferences/com.lujjjh.LinearMouse.plist"

  info 'memorydiag'

  info 'bartender'
  #brew install --cask bartender

  info 'rectangle'
  #brew install --cask rectangle
  #link_file "$DIR/rectangle/com.knollsoft.Rectangle.plist" "$HOME/Library/Preferences/com.knollsoft.Rectangle.plist"

  info 'clipy'
  #brew install --cask clipy
  ###link_file "$DIR/clipy/default.realm" "$HOME/Library/Application Support/com.clipy-app.Clipy/default.realm"
  #link_file "$DIR/clipy/com.clipy-app.Clipy.plist" "$HOME/Library/Preferences/com.clipy-app.Clipy.plist"
  
}

linker
echo ''
echo '  All installed!'
