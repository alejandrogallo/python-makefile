
[![Build Status](https://travis-ci.org/alejandrogallo/python-makefile.svg?branch=master)](https://travis-ci.org/alejandrogallo/python-makefile)

# Python makefile for some projects #




## Overridable variables ##
  * `VAR_NAME`(`DEFAULT`):  Brief description. If the default value is too long to appear it is
    omitted and a `see` is put in its place.  If there is no default value then
    the keyword `empty` appears.
    
  * `SH`(`bash`): Shell used
  * `SHELL`(`see`): Alias for `SHELL'
  * `PY`(`python`): Python interpreter
  * `PYTHON`(`see`): Alias for `PY'
  * `PERL`(`perl`): Perl command
  * `GREP`(`grep`): Grep program version
  * `FIND`(`find`): Find utility
  * `SED`(`see`): `sed` program version
  * `AWK`(`see`): `awk` program to use
  * `CTAGS`(`ctags`): For creating tags
  * `READLINK`(`see`): To get complete paths
  * `XARGS`(`xargs`): `xargs` program to use
  * `TR`(`tr`): `tr` program to use
  * `GIT`(`git`): `git` version to use
  * `WHICH`(`which`): `which` program to use
  * `SORT`(`sort`): `sort` program to use
  * `UNIQ`(`uniq`): `uniq` program to use
  * `MAKE`(`see`): `Makefile` binary
  * `RM`(`rm`): `rm` command
  * `CXX`(`g++`): C++ compiler
  * `CC`(`gcc`): C compiler
  * `FC`(`gfortran`): Fortran compiler
  * `QUIET`(`0`): If secondary programs output is shown
  * `QQUIET`(`empty`): If the log messages should be also muted
  * `DEBUG`(`empty`): If the commands issued should be printed write `DEBUG=1` if you want to see all commands.
  * `TPUT`(`see`): For coloring
  * `WITH_COLOR`(`1`): If messages should have color
  * `DBG_FILE`(`.makefile-dbg`): 
  * `COLOR_R`(`see`): Red
  * `COLOR_G`(`see`): Green
  * `COLOR_Y`(`see`): Yellow
  * `COLOR_DB`(`see`): Dark blue
  * `COLOR_L`(`see`): Lila
  * `COLOR_LB`(`see`): Light blue
  * `COLOR_E`(`see`): Empty color
  * `ARROW`(`@echo "see`): 
  * `ARROW`(`@echo "===>"`): 
  * `ECHO`(`@echo`): 
  * `REQUIREMENTS`(`requirements.txt`): 
  * `PY_LINTER`(`flake8`): Linter program
  * `ENV`(`empty`): 
  * `ENV_FOLDER`(`env`): 
  * `ENV_PIP`(`see`): 
  * `ENV_PYTHON`(`see`): 
  * `VIRTUALENV`(`virtualenv`): 
  * `MAKEFILE_UPDATE_URL`(`https://raw.githubusercontent.com/alejandrogallo/python-makefile/master/dist/Makefile`): 
  * `RM_FLAGS`(`-rf`): Remove command flags
  * `DEFAULT_CLEAN_FILES`(`empty`): Default clean file to be cleaned
  * `CLEAN_FILES`(`see`): Files to be cleaned



## Targets ##
### Ctags generation for latex documents ###


Generate a tags  file so that you can navigate  through the tags using
compatible editors such as emacs or (n)vi(m).

```bash 
make tags
```
### Check syntax ###


It checks the syntax (lints) of all the tex sources using the program in the
TEX_LINTER variable.

```bash 
make lint
```
### Update the makefile from source ###


You can always get the  latest `Makefile` version using this target.  You may
override the `MAKEFILE_UPDATE_URL` to  any path where you save your own
personal makefile

```bash 
make update
```
### Main cleaning ###


This does a main cleaning of the produced auxiliary files.  Before using it
check which files are going to be cleaned up.

```bash 
make clean
```
### Print a variable used by the Makefile ###


For debugging purposes it is useful to print out some variables that the
makefile is using, for that just type `make print` and you will be prompted
to insert the name of the variable that you want to know.

```bash 
make FORCE
```
### Print quick help ###


It prints a quick help in the terminal
```bash 
make help
```
