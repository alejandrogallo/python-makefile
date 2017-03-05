
[![Build Status](https://travis-ci.org/alejandrogallo/python-makefile.svg?branch=master)](https://travis-ci.org/alejandrogallo/python-makefile)

# Python makefile for some projects #




## Overridable variables ##
  * `VAR_NAME`(`DEFAULT`):  Brief description. If the default value is too long to appear it is
    omitted and a `see` is put in its place.  If there is no default value then
    the keyword `empty` appears.
    
  * `SED`(`see`): sed program version
  * `GREP`(`grep`): Grep program version
  * `FIND`(`find`): Find utility
  * `VENV_DIR`(`.env`): 
  * `CLEAN_FILES`(`empty`): 
  * `CTAGS`(`ctags`): For creating tags
  * `TPUT`(`see`): For coloring
  * `WITH_COLOR`(`1`): If messages should have color
  * `QUIET`(`0`): If secondary programs output is shown
  * `CLEAN_FILES`(`empty`): File to be cleaned
  * `QQUIET`(`empty`): 
  * `DEBUG`(`@`): 
  * `COLOR_B`(`see`): 
  * `COLOR_E`(`see`): 
  * `ARROW`(`@echo "see`): 
  * `ARROW`(`@echo "===>"`): 
  * `ECHO`(`@echo`): 
  * `GH_REPO_FILE`(`https://raw.githubusercontent.com/alejandrogallo/python-makefile/master/dist/Makefile`): 



## Targets ##
### Main cleaning ###


This does a main cleaning of the produced auxiliary files.  Before using it
check which files are going to be cleaned up.

```bash 
make clean
```
### Check syntax ###


It checks the syntax (lints) of all the tex sources using the program in the
TEX_LINTER variable.

```bash 
make lint
```
### Update the makefile from source ###


You can always get the  last `latex-makefile` version using this target.
You may override the `GH_REPO_FILE` to  any path where you save your own
personal makefile

```bash 
make update
```
### Ctags generation for latex documents ###


Generate a tags  file so that you can navigate  through the tags using
compatible editors such as emacs or (n)vi(m).

```bash 
make tags
```
### Print quick help ###


It prints a quick help in the terminal
```bash 
make help
```
