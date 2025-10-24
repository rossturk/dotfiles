CWD=$(shell pwd)

.PHONY: install fish-config starship-config gitconfig gitignore claude-config

install: fish-config starship-config gitconfig gitignore claude-config

fish-config:
	@if [ -e $(HOME)/.config/fish ] && [ ! -L $(HOME)/.config/fish ]; then \
		mv -v $(HOME)/.config/fish $(HOME)/.config/fish.bak; \
	fi
	ln -vfs $(CWD)/_config/fish $(HOME)/.config/fish

starship-config:
	@if [ -e $(HOME)/.config/starship.toml ] && [ ! -L $(HOME)/.config/starship.toml ]; then \
		mv -v $(HOME)/.config/starship.toml $(HOME)/.config/starship.toml.bak; \
	fi
	ln -vfs $(CWD)/_config/starship.toml $(HOME)/.config/starship.toml

gitconfig:
	@if [ -e $(HOME)/.gitconfig ] && [ ! -L $(HOME)/.gitconfig ]; then \
		mv -v $(HOME)/.gitconfig $(HOME)/.gitconfig.bak; \
	fi
	ln -vfs $(CWD)/_gitconfig $(HOME)/.gitconfig

gitignore:
	@if [ -e $(HOME)/.gitignore ] && [ ! -L $(HOME)/.gitignore ]; then \
		mv -v $(HOME)/.gitignore $(HOME)/.gitignore.bak; \
	fi
	ln -vfs $(CWD)/_gitignore $(HOME)/.gitignore

claude-config:
	@if [ -e $(HOME)/.claude/CLAUDE.md ] && [ ! -L $(HOME)/.claude/CLAUDE.md ]; then \
		mv -v $(HOME)/.claude/CLAUDE.md $(HOME)/.claude/CLAUDE.md.bak; \
	fi
	ln -vfs $(CWD)/_claude/CLAUDE.md $(HOME)/.claude/CLAUDE.md
