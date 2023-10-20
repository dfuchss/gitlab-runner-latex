# GitLab Runner for LaTeX
[![Docker Push Gitlab Runner 4 LaTeX](https://github.com/dfuchss/gitlab-runner-latex/actions/workflows/build-gitlab-runner-latex.yml/badge.svg)](https://github.com/dfuchss/gitlab-runner-latex/actions/workflows/build-gitlab-runner-latex.yml)

GitLab Runner for Shell usage + TeX Support

Instead of using `gitlab/gitlab-runner` simply use `ghcr.io/dfuchss/gitlab-runner-latex`

* Register as Runner in Shell Mode
* ```docker run -d --name gitlab-runner-shell --restart always -v /srv/gitlab-runner/config:/etc/gitlab-runner ghcr.io/dfuchss/gitlab-runner-latex```


