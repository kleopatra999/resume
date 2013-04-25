title Deploying resume files ...
git branch -D gh-pages
git checkout --orphan gh-pages

move .git resume
cd resume
git add .
git commit -m "First Commit"

