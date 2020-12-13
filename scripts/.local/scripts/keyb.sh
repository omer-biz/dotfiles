#!/bin/sh

# source: 'https://gist.github.com/tanyuan/55bca522bf50363ae4573d4bdcf06e2e'

# make CapsLock behave like Ctrl:
setxkbmap -option ctrl:nocaps

# make short-pressed Ctrl behave like Escape:
xcape -e 'Control_L=Escape'
