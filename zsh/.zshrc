# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#  exec tmux
#fi
####### EXPORTS ########
# comment in as needed #
export TERM=xterm-256color

# Android
export ANDROID_HOME=$HOME/arch/Android
export PATH=$PATH:$ANDROID_HOME/emulator

export BROWSER="google-chrome-stable"
# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export GIT_EDITOR='nvim'

# Compilation flags
# disable on m1 .. ?
# export ARCHFLAGS="-arch x86_64"

## C# / Dotnet ##
export DOTNET_ROOT=$HOME/arch/pkgs/dotnet 
export PATH=$PATH:$HOME/arch/pkgs/dotnet

## Go ##
export GOPATH="$HOME/dev/go"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

###################################
# These are nolonger needed afaik #
###################################
# export GOROOT="$HOME/Dev/go"
# export GOBIN="/usr/bin/go"
# export GOARCH="amd64"
# export GOOS="linux"
# export PATH="$PATH:$GOPATH/bin"
# export GOPATH="$HOME/Dev/goProjects"
# export GOPATH="$HOME/Dev/goworkspace"
# export PATH="$PATH:$GOPATH/bin"

## Java ##
#export JAVA_HOME=/usr/bin/java
#export PATH=$PATH:/usr/lib/jvm

## Node ##
export PATH=$PATH:./node_modules/.bin
export PATH="$PATH:$HOME/.node_modules/bin"
# source /usr/share/nvm/init-nvm.sh

## Ruby ##
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin

# export PATH=$PATH:$HOME/.rbenv/bin
# eval "$(rbenv init -)"

# R
# but in the end its easier to just sudo chown -R $USER /usr/lib/R
# and maybe /usr/share
export R_LIBS="~/arch/pkgs/R"
export R_LIBS_USER="~/arch/pkgs/R"



##export npm_config_prefix="~/.node_modules" ->  deprecated ?
export PATH="$PATH:$HOME/.local/bin"

export PATH="$PATH:$HOME/.emacs.d/bin"
## Misc ##
export XDG_CONFIG_HOME="$HOME/.config"
export FZF_DEFAULT_COMMAND='fd --type f'

# Fuzzy path jumper 'z' by rupa
source ~/.z-jumper.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="norm"
 # ZSH_THEME="amuse"
# ZSH_THEME="jnrowe"
# ZSH_THEME="pygmalion"
#ZSH_THEME="spaceship"
# ZSH_THEME="smt"
# ZSH_THEME="fletcherm"
# ZSH_THEME="lambda"
ZSH_THEME="simple"
#
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump vi-mode zsh-autosuggestions zsh-syntax-highlighting)
# plugins=(git autojump vi-mode emacs zsh-syntax-highlighting)

bindkey '^f' autosuggest-accept
## Aliases ##
#alias vim=emacs
#alias nvim=emacsclient
alias vim=nvim
alias nvim=nvim
alias battery='cat /sys/class/power_supply/BAT0/capacity'
alias bat='cat /sys/class/power_supply/BAT0/capacity'
alias v=nvim
alias p=pcmanfm .
#alias htop=btm
alias top=btm
alias d='dirs -v | head -10'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
   mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh



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
if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

DISABLE_AUTO_TITLE="true"
#function precmd () {
#  window_title="\033]0;${PWD}\007"
#  echo -ne "$window_title"
#}
case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;%~\a"}
    ;;
esac


source ~/.config/nvm/nvm.sh
alias npm-default-registry='npm config set registry https://registry.npmjs.org'
alias npm-spotify-registry='npm config set registry https://artifactory.spotify.net/artifactory/api/npm/virtual-npm'
alias work="$HOME/dotfiles/scripts/work"
alias tmux="tmux -f $HOME/.config/tmux/tmux.conf"
alias magit="emacs -nw --funcal=magit-status"
alias gittouch='git commit --amend --date="$(date -R)"'
alias dired="emacs -nw --funcal=dired"
alias tmr="\tmux rename-window"
alias mp3="youtube-dl --extract-audio --audio-format mp3"
alias ydl="yt-dlp"
alias uni="cd ~/library/docs/universe/ && marktext ."
alias chrome="google-chrome-stable"
alias ls="exa -bhlg"
alias l="exa"
alias cat="\bat"
alias '?'="type -a"
alias doom-force-upgrade="cd ~/.emacs.d && rm -rf .local && git pull && doom install"
export BAT_PAGER="less -RF" # to enable mouse wheel scrolling
# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
# [[ -f /home/eoshiru/.nvm/versions/node/v11.0.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/eoshiru/.nvm/versions/node/v11.0.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh

export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
export LESS_TERMCAP_md=$(tput bold; tput setaf 6) # cyan
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) # yellow on blue
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)
export LESS_TERMCAP_mb=$(printf "\e[1;31m") \
export LESS_TERMCAP_md=$(printf "\e[1;31m") \
export LESS_TERMCAP_me=$(printf "\e[0m") \
export LESS_TERMCAP_se=$(printf "\e[0m") \
export LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
export LESS_TERMCAP_ue=$(printf "\e[0m") \
export LESS_TERMCAP_us=$(printf "\e[1;32m") \

PATH="/home/eos/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/eos/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/eos/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/eos/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/eos/perl5"; export PERL_MM_OPT;


whatsapp() {
   ffmpeg -i $1 -c copy whatsapp-$1 && rm $1
}


#source "/usr/share/fzf/key-bindings.zsh"
#source "/usr/share/fzf/completion.zsh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Work specific settings -> comment in as needed
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
export SDKMAN_DIR="$HOME/.sdkman"
alias jdk='source "$HOME/.sdkman/bin/sdkman-init.sh"'

export BUILDTOOLS_XCODE_OVERRIDE=/Applications/Xcode.app
export PATH="$HOME/work/client-core/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
# Faster sdkman
cdsdkman() {
    cd $1
    if [ -e .sdkmanrc ] &&  [ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]
    then
          printf ".sdkmanrc found in the current directory, do you want to source SDKMAN? (y/n) "
          read yn
          case $yn in
              [Yy]*"" ) source "$HOME/.sdkman/bin/sdkman-init.sh";;
              "" ) source "$HOME/.sdkman/bin/sdkman-init.sh";;
          esac
    fi
}

# alias cd=cdsdkman

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

source /Users/lschoettker/.docker/init-zsh.sh || true # Added by Docker Desktop

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
