# My Custom Docker Files
[![Docker Push Gitlab Runner 4 LaTeX](https://github.com/dfuchss/dockerfiles/actions/workflows/build-gitlab-runner-latex.yml/badge.svg)](https://github.com/dfuchss/dockerfiles/actions/workflows/build-gitlab-runner-latex.yml)
[![Docker Push Default Development](https://github.com/dfuchss/dockerfiles/actions/workflows/build-development.yml/badge.svg)](https://github.com/dfuchss/dockerfiles/actions/workflows/build-development.yml)

This repository contains my custom docker files

## gitlab-runner for LaTeX
GitLab Runner for Shell usage + TeX Support

Instead of using `gitlab/gitlab-runner` simply use `ghcr.io/dfuchss/gitlab-runner-latex`

* Register Runner
* ```docker run -d --name gitlab-runner-shell --restart always -v /srv/gitlab-runner/config:/etc/gitlab-runner ghcr.io/dfuchss/gitlab-runner-latex```

## develop
Ubuntu image with preinstalled packages
* ```docker run -it ghcr.io/dfuchss/default-development```

