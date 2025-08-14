#!/usr/bin/env bash

if [ ! -d "$HOME/archive" ]; then
    mkdir "$HOME/archive"
fi

if [ ! fs.is_ellipsis_symlink "$HOME/archive/repositories.txt" ]; then
    fs.link_rfile repositories.txt "$HOME/archive/repositories.txt"
fi
