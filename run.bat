@echo off
cd ./tests
haxelib run munit test -coverage
pause