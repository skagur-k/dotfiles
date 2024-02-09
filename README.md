# Namhyuck DOTFILES

## Requirements

- Install `zsh` and `oh-my-zsh`


Change default shell to `zsh`
```
  chsh -s $(which zsh)
```

- Install `stow`

```
  sudo apt update
  sudo apt install stow
```

- Install other packages

```
  helix-editor, kubectl, kubectx, k9s, github cli, gcloud, etc
```

## Import dotfiles

```
  git clone git@github.com:skagur-k/dotfiles.git .dotfiles
```

Move to the `.dotfiles` directory.

```
  stow .
```

