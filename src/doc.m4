include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
doc: ## Create documentation
	make -C doc/ html

doc-%:
	make -C doc/ $*

update-gh-pages: ## Update github pages
	@echo "Warning: Black magic in action"
	git push origin $$(git subtree split --prefix doc/build/html/ master):gh-pages --force

