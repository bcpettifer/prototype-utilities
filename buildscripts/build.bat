@echo off
SET buildnum=%1
SET revnum=%2
rem If build number not supplied use 0
IF [%buildnum%]==[] SET buildnum=0
rem If revision number not supplied use 0
IF [%revnum%]==[] SET revnum=0
rem Test script
echo Running nant debug test
tools\nant\bin\NAnt.exe -D:buildNumber=%buildnum% -D:revisionNumber=%revnum% -buildfile:buildscripts\nant.build test
