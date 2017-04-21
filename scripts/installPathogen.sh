#!/bin/bash

# Pathogen is required for my current .vimrc setup, and for vim-airline installation

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
