#
# Oh-my-zsh configuration
#

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set prompt theme
ZSH_THEME="robbyrussell"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Enable auto-correct
ENABLE_CORRECTION="true"

# Load oh-my-zsh plugins
plugins=(git vscode aws)

source $ZSH/oh-my-zsh.sh


### BEGIN zinit configuration $$$
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

### END of zinit configuration ###

# Plugins to load
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-history-substring-search

# Completions
zinit ice blockf
zinit light zsh-users/zsh-completions


#
# User configuration
#

source ~/.aliases
