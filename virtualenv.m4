include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
dnl
ENV ?=
ENV_FOLDER ?= env
ENV_PIP ?= $(ENV_FOLDER)/bin/pip
ENV_PYTHON ?= $(ENV_FOLDER)/bin/python
VIRTUALENV ?= virtualenv

ifdef ENV
PYTHON ?= $(ENV_PYTHON)
PIP ?= $(ENV_PIP)
DEPENDENCIES += virtualenv
DIST_DEPENDENCIES += virtualenv
endif

virtualenv: $(ENV_FOLDER) ## Create the python virtual environment
$(ENV_FOLDER):
	$(ARROW) "Creating virtual environment in '$(ENV_FOLDER)' \
		with python executable '$(PYTHON_EXEC)'"
	$(DBG_FLAG)$(VIRTUALENV) -p $(PYTHON_EXEC) $(ENV_FOLDER)
