@echo off
rem Heeler Setup Script for AxeonDelta
rem Author: KitSixtyFour

if not "%OS%"=="Windows_NT" (
    echo This version of Heeler is not compatible with your computer
    echo Please run this script on a Microsoft Windows NT-based system.
    exit /b 1
) else (
    goto run
)

:run
rem Set the current build lab as the LAB variable for use with the title
for /f "tokens=*" %%i in ('git rev-parse --abbrev-ref HEAD') do set lab=%%i

rem Set the title
title Debug Delta on %lab% in %cd%


doskey dlt=bundle exec jekyll server -o -l
doskey dlw=bundle exec jekyll server -o -l --no-watch
doskey dlb=bundle exec jekyll build
doskey dls=bundle exec jekyll server

rem Re-enable user output
@echo on