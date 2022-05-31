
# Setting PATH for Python 3.7, original path in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# user bin
export PATH=$PATH:$HOME/bin

# homebrew
export PATH=/opt/homebrew/bin:$PATH

# code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# dont know why i need these
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="$PATH:$HOME/.toolbox/bin"
