include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
dnl
# Command to run for `make test`
TEST_COMMAND ?= $(PYTHON) setup.py test
test: ## Run the tests
	$(DBG_FLAG)$(TEST_COMMAND)
