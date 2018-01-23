#!/usr/bin/env sh

haxelib run munit gen
haxelib run munit test -coverage

read -rsn1 -p"Press any key to continue";echo