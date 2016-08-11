@echo off
cd ./tests
haxelib run munit gen
haxelib run munit test -coverage
pause