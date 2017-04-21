#!/bin/bash

# Bashmarks is a really nice util for saving 'bookmarks' for directories.
# For me, this replaces a lot of manual aliases - and is easier to manage.
# See https://github.com/huyng/bashmarks for more information, including usage.

git clone git://github.com/huyng/bashmarks.git
cd bashmarks
make install
echo -e "source ~/.local/bin/bashmarks.sh" >> ~/.bash_profile
