#!/bin/sh

ref=`git rev-parse --abbrev-ref HEAD`

if [ "$ref" != "master" -a "$ref" != "develop" ]; then
  echo Must be on master/develop to clean branches
  exit 1
fi

# Check for modifications
git diff-index --cached --quiet HEAD -- && git diff --no-ext-diff --quiet --exit-code
if [ "$?" != 0 ]; then
  echo Repository has local modifications, not cleaning
  exit 1
fi

git remote prune origin
git branch -l --merged | grep -v develop | grep -v master | xargs git branch -d

# Check for squashed
# Source: https://github.com/not-an-aardvark/git-delete-squashed
git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch
do
	mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse $branch^{tree}) -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch
done

