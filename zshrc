if [ -z "$INTELLIJ_ENVIRONMENT_READER" ]; then
export EMACS=""
if [ "$TERMINAL_EMULATOR" != "JetBrains-JediTerm" ]
then 
   ZSH_TMUX_AUTOSTART=true
fi
ZSH_TMUX_CONFIG="/Users/${USER}/.tmux.conf"
# Path to your oh-my-zsh installation.
export ZSH="/Users/${USER}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"

plugins=(tmux vim-interaction ansible aws dotenv helm sudo vscode virtualenv git docker docker-compose brew kubectl npm pip pyenv python terraform vagrant zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
autoload -Uz compinit
compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

alias cls="clear"
alias sf="cd /Users/${USER}/source"
alias awsp="source _awsp"
alias vim="nvim"
export PATH=/Users/${USER}/Library/Frameworks/Python.framework/Versions/3.8/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/Users/${USER}/Library/Python/3.8/bin:$PATH
export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"
export PATH=/Users/${USER}/go/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
export GOPATH=/Users/${USER}/source/personal/go
export GOROOT=$(go env GOROOT)
export GOBIN="$GOROOT/bin"
export PATH=$(go env GOPATH)/bin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="/Users/${USER}/.cargo/bin:$PATH"
export PATH="/Users/${USER}/.local/bin:$PATH"
eval "$(pyenv init -)"
complete -C '/usr/local/bin/aws_completer' aws

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/stephenmorgan/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/stephenmorgan/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/stephenmorgan/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/stephenmorgan/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

alias kc=kubectl
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
export XDG_CONFIG_HOME=/Users/${USER}/.config


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/${USER}/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/smorgan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/${USER}/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/smorgan/google-cloud-sdk/completion.zsh.inc'; fi
export SOURCEP=~/source/personal


###### FUNCTIONS ######
# minikube start
mks () {
  minikube start
}

# minikube status 
mkstat () {
  minikube status
}

# create repo 
crepo () {
  if [ $2 ]; then
    echo "Too many arguments!"
  elif [ -z $1 ]; then 
    echo "Please supply a repo name!"
  else
    mkdir $1 && cd $_ && git init
  fi
}

export EDITOR=nvim

# if [ -r ~/.zshrc ]; then echo 'export GPG_TTY=$(tty)' >> ~/.zshrc; \
#  else echo 'export GPG_TTY=$(tty)' >> ~/.zprofile; fi



#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH=~/.npm-global/bin:$PATH
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
fi
