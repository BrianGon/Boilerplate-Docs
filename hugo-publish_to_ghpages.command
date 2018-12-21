#!/bin/sh

RED='\033[0;31m'
NC='\033[0m' # No Color

DIR=$(dirname "$0")
PUBLISHDIR="docs"
REMOTEREPO="github"

cd $DIR

if [[ $(git status -s) ]]
then
    echo "${RED}The working directory is dirty. Please commit any pending changes.${NC}"
    exit 1;
fi

echo "Deleting old publication"
rm -rf $PUBLISHDIR
mkdir $PUBLISHDIR
git worktree prune
rm -rf .git/worktrees/$PUBLISHDIR/

echo "Checking out gh-pages branch into $PUBLISHDIR"
git worktree add -B gh-pages $PUBLISHDIR $REMOTEREPO/gh-pages

echo "Removing existing files"
rm -rf $PUBLISHDIR/*

echo "Generating site"
hugo

echo "Updating gh-pages branch"
cd $PUBLISHDIR && git add --all && git commit -m "Publishing to gh-pages (.sh command)"

echo "Pushing to the remote repo"
git push $REMOTEREPO gh-pages