@echo off
haxelib run munit gen
haxelib run munit test -coverage
pause