# My Custom Docker Files
This repository contains my custom docker files

## gitlab-runner for LaTeX
GitLab Runner for Shell usage + TeX Support

Instead of using `gitlab/gitlab-runner` simply use `ghcr.io/dfuchss/gitlab-runner-latex`

* Register Runner
* ```docker run -d --name gitlab-runner-shell --restart always -v /srv/gitlab-runner/config:/etc/gitlab-runner ghcr.io/dfuchss/gitlab-runner-latex```

## develop
Ubuntu image with preinstalled packages
* ```docker build --file=development/Dockerfile -t develop /tmp```

