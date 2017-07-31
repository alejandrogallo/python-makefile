include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
dnl
# Old-style requirements file
REQUIREMENTS ?= requirements.txt
# Command to be run when make `install` is run
INSTALL_COMMAND ?= $(PYTHON) setup.py install
# Command to be run when make `install-local` is run
INSTALL_LOCAL_COMMAND ?= $(PYTHON) setup.py install --user
# Command to be run when make `install-dev` is run
INSTALL_DEV_COMMAND ?= $(PYTHON) setup.py develop
# Command to be run when make `install-dev-local` is run
INSTALL_DEV_LOCAL_COMMAND ?= $(PYTHON) setup.py develop --user
# Command to be run when make `uninstall` is run
UNINSTALL_COMMAND ?= $(PIP) uninstall $(shell $(PYTHON) setup.py --name)
# Command to be run when make `install-deps` is run
INSTALL_DEPS_COMMAND ?= $(PIP) install -r requirements.txt
# Command to be run when make `install-deps-local` is run
INSTALL_DEPS_LOCAL_COMMAND ?= $(PIP) install --user -r requirements.txt
dnl
install-dev-local: ## Install developement version locally
	$(ARROW) Installing development version locally
	$(DBG_FLAG)$(INSTALL_DEV_LOCAL_COMMAND)

install-dev: ## Install developement version
	$(ARROW) Installing development version
	$(DBG_FLAG)$(INSTALL_DEV_COMMAND)

install-local: ## Install the package locally
	$(ARROW) Installing locally
	$(DBG_FLAG)$(INSTALL_LOCAL_COMMAND)

install: ## Install the package
	$(ARROW) Installing...
	$(DBG_FLAG)$(INSTALL_COMMAND)

uninstall: ## Uninstall the package
	$(ARROW) Uninstalling...
	$(DBG_FLAG)$(UNINSTALL_COMMAND)

install-deps-local: ## Install python requirements locally
	$(ARROW) Installing dependencies...
	$(DBG_FLAG)$(INSTALL_DEPS_LOCAL_COMMAND)

install-deps: ## Install python requirements
	$(ARROW) Installing dependencies...
	$(DBG_FLAG)$(INSTALL_DEPS_COMMAND)
