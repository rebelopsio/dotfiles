export EMACS=""
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_CONFIG="/Users/${USER}/.tmux.conf"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/${USER}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(tmux vim-interaction ansible aws dotenv helm sudo vscode virtualenv git docker docker-compose brew kubectl npm pip pyenv python terraform vagrant zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
autoload -Uz compinit
compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

alias cls="clear"
alias sf="cd /Users/${USER}/source"
alias awsdev="export AWS_PROFILE=machinify-dev"
alias awsprod="export AWS_PROFILE=machinify"
alias awsacg="export AWS_PROFILE=persona-terraform-acg"
alias pycharm="/Applications/PyCharm.app/Contents/MacOS/pycharm"
alias awsp="source _awsp"
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
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
complete -C '/usr/local/bin/aws_completer' aws

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/stephenmorgan/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/stephenmorgan/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/stephenmorgan/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/stephenmorgan/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

alias kc=kubectl
export kc=kubectl
alias kc=kubectl
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
# XDG_CONFIG_HOME=/Users/stephenmorgan

# export GPG_TTY=/dev/ttys003

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



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export GPG_TTY=$(tty)
export PATH=~/.npm-global/bin:$PATH
