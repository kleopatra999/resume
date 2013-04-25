title Deploying resume files ...
git branch -D gh-pages
git checkout --orphan gh-pages

xcopy /E /H /R /K /Y /I .git resume\.git
rd /S /Q .git

cd resume
git add .
git commit -m "First Commit"


