include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
# ====================================
# Ctags generation for latex documents
# ====================================
#
# Generate a tags  file so that you can navigate  through the tags using
# compatible editors such as emacs or (n)vi(m).
#
tags: ## Create python exhuberant ctags
	$(CTAGS) --language-force=python -R *
