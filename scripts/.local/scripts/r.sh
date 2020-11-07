#!/bin/sh

# I'm just tired of running 
# `ps` with `grep` every time
# I'm hunting for processes

[[ $# = 1 ]] && ps aux | grep "$1" | grep -v "grep" | grep -v "r.sh"
