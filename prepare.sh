#!/bin/sh
export COMPILATION_COMMANDS=compile_commands.json
export FORWARD_COMPILER=clang
CC=/Users/caochunhui/woboq_codebrowser/scripts/fake_compiler.sh  ./configure  #即将CC替换为fake_compiler.sh
echo "[" > $COMPILATION_COMMANDS
make -j8
echo " { \"directory\": \".\", \"command\": \"true\", \"file\": \"/dev/null\" } ]" >> $COMPILATION_COMMANDS

