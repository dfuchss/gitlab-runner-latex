# My Custom Docker Files
This repository contains my custom docker files

## develop
Ubuntu image with preinstalled packages
* ```docker build --file=develop.dockerfile -t develop /tmp```

## gitlab-runner
GitLab Runner for Shell usage + TeX Support

* ```docker build --file=gitlab-runner.dockerfile -t gitlab-runner-shell /tmp```
* Register Runner
* ```docker run -d --name gitlab-runner-shell --restart always -v /srv/gitlab-runner/config:/etc/gitlab-runner gitlab-runner-shell```
