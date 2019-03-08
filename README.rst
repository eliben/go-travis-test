Playing with Travis running go programs as part of the build

.. image:: https://travis-ci.com/eliben/go-travis-test.png?branch=master
  :align: center
  :target: https://travis-ci.com/eliben/go-travis-test

* TRAVIS_BRANCH
* TRAVIS_PULL_REQUEST
* TRAVIS_PULL_REQUEST_SHA

Observation: when PR is first created, TRAVIS_PULL_REQUEST_SHA is not set. But
it is set when another commit is pushed to the PR.
