#!/bin/bash

bash ./autogen.sh

export  CFLAGS="-Wno-error $CFLAGS"

./configure --prefix=$PREFIX

make
make check
make install

find $PREFIX -name '*.la' -delete
