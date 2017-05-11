include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
install-dev-local: ## Install developement version locally
	python setup.py develop --user

install-dev: ## Install developement version
	python setup.py develop --user

install-local: ## Install the package locally
	python setup.py install --user

install-local: ## Install the package
	python setup.py install --user

