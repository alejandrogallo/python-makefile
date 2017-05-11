include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
REQUIREMENTS ?= requirements.txt
dnl
install-dev-local: ## Install developement version locally
	$(DBG_FLAG)$(PYTHON) setup.py develop --user

install-dev: ## Install developement version
	$(DBG_FLAG)$(PYTHON) setup.py develop --user

install-local: ## Install the package locally
	$(DBG_FLAG)$(PYTHON) setup.py install --user

install: ## Install the package
	$(DBG_FLAG)$(PYTHON) setup.py install

uninstall: ## Uninstall the package
	$(DBG_FLAG)$(PYTHON) setup.py uninstall

install-deps: ## Install python requirements
	$(ARROW) Installing dependencies
	$(DBG_FLAG)$(PIP) install -r requirements.txt
