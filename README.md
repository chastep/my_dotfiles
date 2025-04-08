# chastep's dotfiles

[![GitHub Repo](https://img.shields.io/badge/github-repo-blue?style=flat)](https://github.com/chastep/my_dotfiles)

This repository is inspired by [denolfe's dotfiles](https://github.com/denolfe/dotfiles).

[![Powered by dotbot][dbshield]][dblink]

[dblink]: https://github.com/anishathalye/dotbot
[dbshield]: https://img.shields.io/badge/powered%20by-dotbot-blue?style=flat

> Personal dotfiles configuration

| Component                     | Tool                                                      | Config                                   |
| ----------------------------- | --------------------------------------------------------- | ---------------------------------------- |
| Installation                  | [Dotbot](https://github.com/anishathalye/dotbot)          | [install.conf.yaml](./install.conf.yaml) |
| Terminal                      | [Iterm2](https://iterm2.com/)                             | [config](./iterm2)               |
| Theme                         | [Powerlevel10k](https://github.com/romkatv/powerlevel10k) | [p10k.zsh](./zsh/p10k.zsh)               |
| .zshrc                        | [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)    | [.zshrc](./zsh/zshrc.zsh)                |

## [Makefile](./Makefile)

- Install with dotbot
- Homebrew save/restore
- VS Code extension save/restore
- Install MacOS defaults

## Usage

*Prerequisites: git, zsh*

### Installation

```sh
git clone git@github.com:chastep/my_dotfiles.git .dotfiles --recursive
cd .dotfiles
make install
```

### Other Tasks

*[See Makefile](./Makefile)*
