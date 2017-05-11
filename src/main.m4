include(common-makefile/src/include_once.m4)
define(_MAKEFILE_AUTHOR, Alejandro Gallo)dnl
define(_MAKEFILE_URL, https://github.com/alejandrogallo/python-makefile)dnl
include_once(common-makefile/src/version.m4)

## <<HELP
#
#                            Python Makefile
#
## HELP

# Local configuration
-include config.mk

PYTHON = python
PY_LINTER = flake8

REQUIREMENTS = requirements.txt

CLEAN_FILES += \
$(shell find . -name *.pyc) \
$(shell find . -name *.pyo) \
$(shell find . -name __pycache__) \
$(wildcard test_* ) \

include_once(common-makefile/src/os.m4)
include_once(common-makefile/src/shell-utils.m4)
include_once(common-makefile/src/log.m4)


include_once(ctags.m4)
include_once(install.m4)
include_once(lint.m4)
include_once(doc.m4)
include_once(test.m4)

define(
_MAKEFILE_UPDATE_URL,
 https://raw.githubusercontent.com/alejandrogallo/python-makefile/master/dist/Makefile
)dnl
include_once(common-makefile/src/update.m4)
include_once(common-makefile/src/clean.m4)
include_once(common-makefile/src/print-variable.m4)
include_once(common-makefile/src/help.m4)
include_once(common-makefile/src/help-target.m4)
# vim: cc=80
dnl vim: noexpandtab
