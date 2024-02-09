# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="eastwood"

# Bindkey: Accept zsh-autosuggest
bindkey '^ ' autosuggest-accept

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 15

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
  fzf
	)

source $ZSH/oh-my-zsh.sh

source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration

# Autosuggest Highlight Color (https://coderwall.com/p/pb1uzq/z-shell-colors)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

# Import Aliases
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/env.zsh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='hx'
  export VISUAL="$EDITOR"
else
  export EDITOR='hx'
  export VISUAL="$EDITOR"
fi


[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
