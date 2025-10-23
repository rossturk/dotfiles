CWD=$(shell pwd)

install:
	make $(HOME)/.config/fish
	make $(HOME)/.config/starship.toml
	make $(HOME)/.gitconfig
	make $(HOME)/.gitignore
	make $(HOME)/.claude/CLAUDE.md

$(HOME)/.config/fish:
	ln -vs $(CWD)/_config/fish $(HOME)/.config/fish

$(HOME)/.config/starship.toml:
	ln -vs $(CWD)/_config/starship.toml $(HOME)/.config/starship.toml

$(HOME)/.gitconfig:
	ln -vs $(CWD)/_gitconfig $(HOME)/.gitconfig

$(HOME)/.gitignore:
	ln -vs $(CWD)/_gitignore $(HOME)/.gitignore

$(HOME)/.claude/CLAUDE.md:
	ln -vs $(CWD)/_claude/CLAUDE.md $(HOME)/.claude/CLAUDE.md
