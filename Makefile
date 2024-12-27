DOTFILES := $(patsubst %, ${HOME}/.%, $(shell ls dot))
DOTCONFIG_FILES := $(patsubst %, ${HOME}/.config/%, $(shell ls dotconfig))

VSCODE_PATH := "${HOME}/Library/Application Support/Code/User"
VSCODE_EXTENSIONS_FILE := vscode/extensions.txt

.PHONY: brew-install brew-bundle uninstall dotfiles vscode-config vscode-extensions save-vscode-extensions

dotfiles: $(DOTFILES) $(DOTCONFIG_FILES)
install: dotfiles brew-install brew-bundle use-modern-bash vscode-config vscode-extensions

$(DOTFILES): $(addprefix ${HOME}/., %) : ${PWD}/dot/%
	ln -sFi $< $@

$(DOTCONFIG_FILES): $(addprefix ${HOME}/.config/, %) : ${PWD}/dotconfig/%
	ln -sFi $< $@

use-modern-bash:  ## Install recent version of bash and use instead of macos catalina's zsh
	@echo "Trusting bash 5 to use as shell, press enter to continue"; read
	sudo bash -c 'echo "/opt/homebrew/bin/bash" >> /etc/shells'
	chsh -s /opt/homebrew/bin/bash
	. ~/.bashrc

vscode-config:
	mkdir -p $(VSCODE_PATH)
	ln -si ${PWD}/vscode/keybindings.json $(VSCODE_PATH)
	ln -si ${PWD}/vscode/settings.json $(VSCODE_PATH)

vscode-extensions:
	xargs -n1 code --install-extension < $(VSCODE_EXTENSIONS_FILE)

save-vscode-extensions:
	code --list-extensions > $(VSCODE_EXTENSIONS_FILE)

brew-install:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew-bundle:
	brew bundle

uninstall:
	@echo $(DOTFILES) | xargs -n 1 sh -c 'unlink $$0 || true'

