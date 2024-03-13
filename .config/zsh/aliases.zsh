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
alias zjd="zellij delete-all-sessions"

alias gpt="chatgpt"

mkcdir() {
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}

alias open="/mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe"
