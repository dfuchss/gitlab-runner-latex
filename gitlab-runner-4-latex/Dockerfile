FROM gitlab/gitlab-runner:latest
RUN echo "Installing needed dependencies" \
  && apt-get update && apt-get install -y --no-install-recommends locales \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN echo "Fixing locales" \
  && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
  && locale-gen

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN echo "Installing TeX" \
  && cd /tmp \
  && wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
  && zcat install-tl-unx.tar.gz | tar xf - \
  && rm install-tl-unx.tar.gz \
  && cd install-tl-* \
  && echo "tlpdbopt_sys_bin /usr/local/bin"   >> texlive.profile \
  && echo "tlpdbopt_sys_info /usr/local/info" >> texlive.profile \
  && echo "tlpdbopt_sys_man /usr/local/man"   >> texlive.profile \
  && perl ./install-tl --profile texlive.profile --no-interaction
