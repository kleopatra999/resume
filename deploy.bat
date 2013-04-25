@echo off
title Deploying resume files ...
git checkout gh-pages
rd /S /Q .git
git add .
git commit -m "First Commit"
git push --force origin gh-pages
git checkout master
echo Everything is done.
pause
