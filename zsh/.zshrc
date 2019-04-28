# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

####### EXPORTS ########
# comment in as needed #

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export GIT_EDITOR='nvim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

## C# / Dotnet ##
export DOTNET_ROOT=$HOME/arch/pkgs/dotnet 
export PATH=$PATH:$HOME/arch/pkgs/dotnet

## Go ##
export GOPATH="$HOME/dev/go"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

# export GOROOT="$HOME/Dev/go"
# export GOBIN="/usr/bin/go"
# export GOARCH="amd64"
# export GOOS="linux"
# export PATH="$PATH:$GOPATH/bin"
# export GOPATH="$HOME/Dev/goProjects"
# export GOPATH="$HOME/Dev/goworkspace"
# export PATH="$PATH:$GOPATH/bin"

## Node ##
export PATH=$PATH:./node_modules/.bin
export PATH="$PATH:$HOME/.node_modules/bin"
# source /usr/share/nvm/init-nvm.sh

## Ruby ##
export PATH=$PATH:$HOME/.rbenv/bin
eval "$(rbenv init -)"

##export npm_config_prefix="~/.node_modules" ->  deprecated ?

## Misc ##
export XDG_CONFIG_HOME="$HOME/.config"
export FZF_DEFAULT_COMMAND='fd --type f'

# Fuzzy path jumper 'z' by rupa
source ~/.z.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="norm"
# ZSH_THEME="amuse"
# ZSH_THEME="jnrowe"
# ZSH_THEME="pygmalion"
# ZSH_THEME="smt"
#
# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting autojump zsh-autosuggestions vi-mode emacs)

## Aliases ##
#alias vim=emacs
#alias nvim=emacsclient
alias vim=nvim
alias p=pcmanfm .
bindkey '^f' autosuggest-accept

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
   mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh



# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# export PATH=/usr/local/bin:$PATH
# export PATH=/home/chinchi/.gem/ruby/2.4.0
# export CC=/usr/bin/gcc
# alias vim=nvim
# alias v=nvim
# autoload -U promptinit; promptinit

# optionally define some options
# PURE_CMD_MAX_EXEC_TIME=10

# prompt pure

 # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
 # deactivate for now because id ont need it and fucks up zsh git complt
#export PATH="$PATH:$HOME/.rvm/bin"

# source $PATH:$HOME/.rvm/scripts/rvm
