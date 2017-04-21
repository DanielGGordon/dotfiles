#!/bin/bash

git clone git://github.com/huyng/bashmarks.git
cd bashmarks
make install
echo -e "source ~/.local/bin/bashmarks.sh" >> ~/.bash_profile
