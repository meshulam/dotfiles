SOURCES := $(shell ls dot)
DOTFILES :=  $(patsubst %, ${HOME}/.%, $(SOURCES))
VSCODE_PATH := "${HOME}/Library/Application Support/Code/User"
VSCODE_EXTENSIONS_FILE := vscode/extensions.txt

.PHONY: update brew-install brew-bundle uninstall dotfiles vscode-config vscode-extensions save-vscode-extensions

dotfiles: $(DOTFILES)
install: dotfiles brew-install brew-bundle vscode-config vscode-extensions

$(DOTFILES): $(addprefix ${HOME}/., %) : ${PWD}/dot/%
	ln -sFi $< $@

vscode-config:
	mkdir -p $(VSCODE_PATH)
	ln -si ${PWD}/vscode/keybindings.json $(VSCODE_PATH)
	ln -si ${PWD}/vscode/settings.json $(VSCODE_PATH)

vscode-extensions:
	xargs -n1 code --install-extension < $(VSCODE_EXTENSIONS_FILE)

save-vscode-extensions:
	code --list-extensions > $(VSCODE_EXTENSIONS_FILE)

brew-install:
	ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew-bundle:
	brew bundle

uninstall:
	@echo $(DOTFILES) | xargs -n 1 sh -c 'unlink $$0 || true'

update: all
	@git pull
	@git submodule update --init --recursive
