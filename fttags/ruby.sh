#!/bin/sh

##
# The output filename comes as $1
#
# IMPORTANT: Redirects the usual warnings and errors to /dev/null
# and avoid all kind of verbosity. Any output will cause errors when
# executing this file through Vim. Debug separately.
#
# REPLACE FILETYPENAME FOR YOUR FILETYPE.
#
# * Supported ctags filetypes
#   @see ctags --list-languages
#
# * FILETYPENAME-kinds values depends on the language
#   @see ctags --list-kinds
#
# * FILETYPENAME-regex Is optional
##

ctags \
-f $1 \
-R \
--languages=ruby \
--exclude=.git \
--exclude=log \
--totals=no \
--verbose=no \
# --tag-relative=yes \
# --RUBY-kinds=+cfmF \
$(bundle list --paths) 2> /dev/null
