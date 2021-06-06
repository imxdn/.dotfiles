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


#
# Zinit configuration
#

source ~/.zinit/bin/zinit.zsh
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

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
