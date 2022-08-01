# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5a5a5a,bold,underline"
ZSH_THEME="ys"

# User configuration
export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"
bindkey '^ ' autosuggest-accept

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

function ssh-init {
        if [ -z "$SSH_AUTH_SOCK" ] ; then
        eval `ssh-agent -s`
        ssh-add
        fi
}

plugins=(
        git
        fzf
        zsh-autosuggestions
        zsh-syntax-highlighting    
        )

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


source $ZSH/oh-my-zsh.sh

# aliases
alias zshrc="code ~/.zshrc"
alias ss=ssh-init

alias ls="exa --icons --group-directories-first"
alias ll="exa -alh --group-directories-first --icons --git --no-permissions --no-user"
alias tree="exa --tree --level=2"
alias cat="bat"
alias dev="cd ~/dev"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias rr="source ~/.zshrc"
alias np="pnpm"
alias skadocs="cd ~/skaui/ && pnpm run dev --filter=docs..."


# Starship (config @ ~/.config/starship.toml)
# eval "$(starship init zsh)"
# pnpm
export PNPM_HOME="/home/skagur/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end