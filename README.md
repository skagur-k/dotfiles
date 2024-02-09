# DOTFILES

Last updated: 2024/02/09

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

Configure ssh

[Github SSH Configuration](https://shinjam.tistory.com/entry/GitGithub-SSH-%EC%84%A4%EC%A0%95)

## Import dotfiles

```
  git clone git@github.com:skagur-k/dotfiles.git .dotfiles
```

Move to the `.dotfiles` directory.

```
  stow .
```

