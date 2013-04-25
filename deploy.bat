@echo off
title Deploying resume files ...
git branch -D gh-pages
git checkout --orphan gh-pages
git status
git rm -r -q --cached .
for /f %%G in ('dir /b .') do ( if not "%%G" == "resume" del /S /F /Q %%G )
move resume\* . 
rd /S /Q resume
git status
git add .
git commit -m "First Commit"

