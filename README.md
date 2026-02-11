# dotfiles

[![Powered by dotbot][dbshield]][dblink]

[dblink]: https://github.com/anishathalye/dotbot
[dbshield]: https://img.shields.io/badge/powered%20by-dotbot-blue?style=flat

> Personal dotfiles configuration

| Component    | Tool                                                      | Config                                   |
| ------------ | --------------------------------------------------------- | ---------------------------------------- |
| Installation | [Dotbot](https://github.com/anishathalye/dotbot)          | [install.conf.yaml](./install.conf.yaml) |
| Terminal     | [Ghostty](https://ghostty.org)                            | [config](./ghostty/config)               |
| Shell        | Zsh + [zgenom](https://github.com/jandamm/zgenom)         | [zshrc.zsh](./zsh/zshrc.zsh)             |
| Theme        | [Powerlevel10k](https://github.com/romkatv/powerlevel10k) | [p10k.zsh](./zsh/p10k.zsh)               |
| Versions     | [asdf](https://asdf-vm.com)                               | [.tool-versions](./.tool-versions)       |

## Usage

*Prerequisites: git, zsh*

### Installation

```sh
git clone git@github.com:denolfe/dotfiles.git ~/.dotfiles --recursive
cd ~/.dotfiles
make install
make asdf-setup  # Install language versions
make macos       # Apply macOS defaults
```

### Available Commands

```sh
make help
```

| Command | Description |
|---------|-------------|
| `make install` | Run dotbot (links, homebrew, git config) |
| `make link` | Only run dotbot linking |
| `make brew` | Save current Homebrew packages to Brewfile |
| `make brew-restore` | Install Homebrew and restore packages |
| `make macos` | Apply macOS system defaults |
| `make asdf-setup` | Install asdf plugins and versions |
| `make vscode-install` | Install VS Code extensions |
| `make vscode-save` | Save current VS Code extensions |
