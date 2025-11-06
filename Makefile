CWD=$(shell pwd)

# Define source -> destination mappings
LINKS = \
	_config/fish:$(HOME)/.config/fish \
	_config/starship.toml:$(HOME)/.config/starship.toml \
	_gitconfig:$(HOME)/.gitconfig \
	_gitignore:$(HOME)/.gitignore \
	_claude/CLAUDE.md:$(HOME)/.claude/CLAUDE.md

.PHONY: install

install:
	@$(foreach link,$(LINKS), \
		rm -rf $(word 2,$(subst :, ,$(link))) && \
		ln -fvs $(CWD)/$(word 1,$(subst :, ,$(link))) $(word 2,$(subst :, ,$(link))) ; \
	)
