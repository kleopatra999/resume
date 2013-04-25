title Deploying resume files ...
git branch -D gh-pages
git checkout --orphan gh-pages origin/gh-pages

move %CD%\.git %CD%\resume\.git
pause
cd resume
git add .
git commit -m "First Commit"
