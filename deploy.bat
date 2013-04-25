@echo off
title Deploying resume files ...
git branch -d -f gh-pages
git checkout --orphan gh-pages
xcopy /E /H .git resume\.git
cd resume
git commit -m "First Commit"
git push --force origin gh-pages
cd ..
git clean -f
git checkout master
echo Everything is done.
pause
