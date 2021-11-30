#!/bin/sh

set -xe

CFLAGS="-Wall -Werror -std=c11 -pedantic -ggdb `pkg-config --cflags --static sdl2`"
LIBS="`pkg-config --libs --static sdl2` -lm -static"

cc $CFLAGS -o whine main.c $LIBS
