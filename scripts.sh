#!/bin/sh

if [ $1 == "build" ]
then
    make -j2 -s
elif [ $1 == "configure" ]
then
    ./configure --with-pydebug
elif [ $1 == "regentokens" ]
then
    make regen-token && make regen-pegen && make -j2 -s
elif [ $1 == "regengrammar" ]
then
    make regen-pegen && make -j2 -s
fi
