title Deploying resume files ...
git branch -D gh-pages
git checkout --orphan gh-pages
git rm -r -q --cached .
git status
xcopy /E /H /R /K /Y /I .git resume\.git
rd /S /Q .git

cd resume
git status
git add .
git commit -m "First Commit"

