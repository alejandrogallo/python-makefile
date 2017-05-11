include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
dnl
# Linter program
PY_LINTER ?= flake8
dnl
# ============
# Check syntax
# ============
#
# It checks the syntax (lints) of all the tex sources using the program in the
# TEX_LINTER variable.
#
lint: ## Check syntax of sources
	$(PY_LINTER)
