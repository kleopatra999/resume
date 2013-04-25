@echo off
title Deploying resume files ...
git branch -d -f gh-pages
git checkout --orphan gh-pages
move .git resume\.git
move resume %TEMP%\resume
del /F /S *
move %TEMP%\resume\* .\  
git add .
git commit -m "First Commit"
git push --force origin gh-pages
git checkout master
echo Everything is done.
pause
