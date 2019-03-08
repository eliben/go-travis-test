set -euxo pipefail

echo "$TRAVIS_BRANCH"
echo "$TRAVIS_PULL_REQUEST"
git diff --name-only HEAD...$TRAVIS_BRANCH

if [[ -z "$TRAVIS_PULL_REQUEST_SHA" ]]; then
  echo "TRAVIS_PULL_REQUEST_SHA not set"
  echo "BAD BAD BAD BAD BAD"
else
  echo "$TRAVIS_PULL_REQUEST_SHA"
  mergebase="$(git merge-base -- "$TRAVIS_BRANCH" "$TRAVIS_PULL_REQUEST_SHA")"
  echo $mergebase
  git diff --name-only "$mergebase" "$TRAVIS_PULL_REQUEST_SHA" --
  git diff "$mergebase" "$TRAVIS_PULL_REQUEST_SHA" --
fi

echo "Running 'go run'"
go run goprogram.go
exit 0
