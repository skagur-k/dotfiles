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

# kubectl / kubectx completions
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
fpath=(/home/namhyuck/.oh-my-zsh/custom/completions /home/namhyuck/.oh-my-zsh/plugins/fzf /home/namhyuck/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting /home/namhyuck/.oh-my-zsh/custom/plugins/zsh-autosuggestions /home/namhyuck/.oh-my-zsh/plugins/git /home/namhyuck/.oh-my-zsh/functions /home/namhyuck/.oh-my-zsh/completions /home/namhyuck/.oh-my-zsh/cache/completions /usr/local/share/zsh/site-functions /usr/share/zsh/vendor-functions /usr/share/zsh/vendor-completions /usr/share/zsh/functions/Calendar /usr/share/zsh/functions/Chpwd /usr/share/zsh/functions/Completion /usr/share/zsh/functions/Completion/AIX /usr/share/zsh/functions/Completion/BSD /usr/share/zsh/functions/Completion/Base /usr/share/zsh/functions/Completion/Cygwin /usr/share/zsh/functions/Completion/Darwin /usr/share/zsh/functions/Completion/Debian /usr/share/zsh/functions/Completion/Linux /usr/share/zsh/functions/Completion/Mandriva /usr/share/zsh/functions/Completion/Redhat /usr/share/zsh/functions/Completion/Solaris /usr/share/zsh/functions/Completion/Unix /usr/share/zsh/functions/Completion/X /usr/share/zsh/functions/Completion/Zsh /usr/share/zsh/functions/Completion/openSUSE /usr/share/zsh/functions/Exceptions /usr/share/zsh/functions/MIME /usr/share/zsh/functions/Math /usr/share/zsh/functions/Misc /usr/share/zsh/functions/Newuser /usr/share/zsh/functions/Prompts /usr/share/zsh/functions/TCP /usr/share/zsh/functions/VCS_Info /usr/share/zsh/functions/VCS_Info/Backends /usr/share/zsh/functions/Zftp /usr/share/zsh/functions/Zle)

# zellij autostart
eval "$(zellij setup --generate-auto-start zsh)"

# start typing + [Up-Arrow] - fuzzy find history forward
bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search

# start typing + [Down-Arrow] - fuzzy find history backward
bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
