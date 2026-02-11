.PHONY: install link vscode-install vscode-save brew brew-restore macos asdf-setup help

# Show available commands
help:
	@echo "Available commands:"
	@echo "  make install        - Run dotbot install (links, homebrew, git config)"
	@echo "  make link           - Only run dotbot linking"
	@echo "  make brew           - Save current Homebrew packages to Brewfile"
	@echo "  make brew-restore   - Install Homebrew and restore packages from Brewfile"
	@echo "  make macos          - Apply macOS system defaults"
	@echo "  make asdf-setup     - Install asdf plugins and versions"
	@echo "  make vscode-install - Install VS Code extensions from list"
	@echo "  make vscode-save    - Save current VS Code extensions to list"

# Run dotbot install script
install:
	./install

link:
	./install --only link


# Install extensions from vscode/extensions.txt
vscode-install:
	cat ${DOTFILES}/vscode/extensions.txt | xargs -L 1 code --install-extension

# Save all current extensions to vscode/extensions.txt
vscode-save:
	code --list-extensions > ${DOTFILES}/vscode/extensions.txt

# Save snapshot of all Homebrew packages to macos/Brewfile
brew:
	brew bundle dump -f --file=macos/Brewfile
	brew bundle --force cleanup --file=macos/Brewfile

# Restore Homebrew packages
brew-restore:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew update
	brew upgrade
	brew install mas
	brew bundle install --file=macos/Brewfile
	brew cleanup

# Set MacOS defaults
macos:
	./macos/set-defaults.sh

# Install asdf plugins and versions from .tool-versions
asdf-setup:
	asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git || true
	asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git || true
	asdf plugin add python https://github.com/asdf-vm/asdf-python.git || true
	asdf install
