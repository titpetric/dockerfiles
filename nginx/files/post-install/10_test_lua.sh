#!/bin/bash
set -e
TEST=$(echo 'print("hello")' | lua -)
if [ "$TEST" == "hello" ]; then
	echo "Lua check passed OK"
else
	echo "Lua check failed, unexpected output: ${TEST}"
	exit 1
fi
