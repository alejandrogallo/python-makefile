include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
test: ## Run the tests
	$(DBG_FLAG)python setup.py test
