alias dot="cd $DOTFILES"
alias src="source ~/.zshrc"

alias rm="rm -i"
# alias mkdir="mkcdir"

alias ls="exa -lh --color=never --group-directories-first"
alias la="exa -alh --color=never --group-directories-first"
alias tree="exa -a --tree --level=2"

alias cat="batcat"

alias kc="kubectl"
alias kx="kubectx"

alias gc="gcloud"
alias zj="zellij"

mkcdir() {
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}
