# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] && ! type "$startx" > /dev/null; then
	  exec startx
fi

# Set directory for zinit plugin manager and its plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit if it doesn't exist yet
if [ ! -d $ZINIT_HOME ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add powerlevel10k prompt [requires working nerdfont]
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Load powerlevel10k setting, run `p10k configure` or edit ~/.p10k.zsh to customize
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add snippets (e.g. oh-my-zsh addons)
zinit snippet OMZP::git # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
zinit snippet OMZP::command-not-found
zinit snippet OMZP::z # basic zoxide alternative

# Load completions
autoload -U compinit && compinit

zinit cdreplay -q # recommended optimization to reuse cached completions

# Emacs like keybindings
bindkey -e
bindkey '^p' history-search-backward # consider same thing for arrow keys?
bindkey '^n' history-search-forward
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line # ctrl-x ctrl-e to open prompt in nvim!!!

# History
HISTSIZE=50000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space # prefix commands with a leading space to not insert them into history
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt auto_cd # allows skipping cd eg .. , ~ , etc 
setopt globdots # allow to autocomplete hidden '.xyz' files

# Other settings
unsetopt BEEP # turn off all bells
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # case insesitive tab completion
# export LSCOLORS="Gxfxcxdxbxegedabagacad" 
# zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:default' list-colors "di=34" "ln=35" "so=32" "pi=33" "ex=31" "bd=34;46" "cd=34;43" "su=30;41" "sg=30;46" "tw=30;42" "ow=30;43" # apply color highlight to completions
zstyle ':completion:*' menu no # disable default zsh completion menu as we're using fzf's completion menu
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath' # preview folder contents on cd


# Shell integrations
eval  "$(fzf --zsh)" # requires fzf to be installed
# eval  "$(zoxide init --cmd cd zsh)" # requires zoxide to be installed


# Source exports
source ~/.zshexports

# Source aliases
source ~/.zshaliases

