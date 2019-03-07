set -euxo pipefail

echo $TRAVIS_BRANCH
echo $TRAVIS_PULL_REQUEST_SHA
git diff --name-only HEAD...$TRAVIS_BRANCH

mergebase="$(git merge-base -- "$TRAVIS_BRANCH" "$TRAVIS_PULL_REQUEST_SHA")"
echo $mergebase
git diff --name-only "$mergebase" "$TRAVIS_PULL_REQUEST_SHA" --

echo "Running 'go run'"
go run goprogram.go
exit 0
