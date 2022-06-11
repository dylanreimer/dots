# ----------------------
# zsh config
# ----------------------

zmodload zsh/zprof

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"
# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"
# unset zsh auto cd
unsetopt AUTO_CD

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.dots/zsh/custom

source $ZSH/oh-my-zsh.sh



# ----------------------
# app config
# ----------------------

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/dylanreimer/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/dylanreimer/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/dylanreimer/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/dylanreimer/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



# ----------------------
# lazy loads
# ----------------------

nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}
 
#node() {
#    unset -f node
#    export NVM_DIR=~/.nvm
#    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#    node "$@"
#}
 
#npm() {
#    unset -f npm
#    export NVM_DIR=~/.nvm
#    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#    npm "$@"
#}



# ----------------------
# compinit check limit
# ----------------------

# autoload -Uz compinit

# if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' $ZSH_COMPDUMP) ]; then
#     compinit
# else
#     compinit -C
# fi

export PATH=$HOME/.toolbox/bin:$PATH
export JAVA_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-17.jdk/Contents/Home"

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

export PATH="/opt/homebrew/opt/node@12/bin:$PATH"
export PATH="/opt/homebrew/opt/node@14/bin:$PATH"
