#
# MAKEFILE --Build rules for cashew, the cache directory update utility.
#
language = sh nroff
SH_SRC = cashew.sh

include makeshift.mk

install: install-all
uninstall: uninstall-all
