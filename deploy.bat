title Deploying resume files ...
git branch -D gh-pages
git checkout --orphan gh-pages
git rm -r -q --cached .

xcopy /E /H /R /K /Y /I .git resume\.git
rd /S /Q .git

cd resume
git add .
git c -am "First Commit"

