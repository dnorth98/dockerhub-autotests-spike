# dockerhub-autotests-spike
Small repo to test out the autotests functionality of Dockerhub image builds.  Using:

* Create a repo in Dockerhub and link it to this repo
* Enable auto builds and autotests for internal PRs
* Add a build rule for `Branch` with the following source and tag:
  * Source: `/^(release|feature|hotfix)\/(.*)/`
  * Tag: `{\1}-{\2}`

Any branches that follow the git flow ordering will now be built and have auto-tests run on them.