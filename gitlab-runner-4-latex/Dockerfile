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
  && echo "selected_scheme scheme-full"   					>> texlive.profile \
  && echo "TEXDIR /usr/local/texlive"   						>> texlive.profile \
  && echo "TEXMFCONFIG ~/.texlive/texmf-config"   			>> texlive.profile \
  && echo "TEXMFHOME ~/texmf"   								>> texlive.profile \
  && echo "TEXMFLOCAL /usr/local/texlive/texmf-local"   		>> texlive.profile \
  && echo "TEXMFSYSCONFIG /usr/local/texlive/texmf-config"   >> texlive.profile \
  && echo "TEXMFSYSVAR /usr/local/texlive/texmf-var"   		>> texlive.profile \
  && echo "TEXMFVAR ~/.texlive/texmf-var"   					>> texlive.profile \
  && echo "binary_x86_64-linux 1"   							>> texlive.profile \
  && echo "instopt_adjustpath 1"   							>> texlive.profile \
  && echo "instopt_adjustrepo 1"   							>> texlive.profile \
  && echo "instopt_letter 0"   								>> texlive.profile \
  && echo "instopt_portable 0"   							>> texlive.profile \
  && echo "instopt_write18_restricted 1"   					>> texlive.profile \
  && echo "tlpdbopt_autobackup 1"   							>> texlive.profile \
  && echo "tlpdbopt_backupdir tlpkg/backups"   				>> texlive.profile \
  && echo "tlpdbopt_create_formats 1"   						>> texlive.profile \
  && echo "tlpdbopt_desktop_integration 1"   				>> texlive.profile \
  && echo "tlpdbopt_file_assocs 1"   						>> texlive.profile \
  && echo "tlpdbopt_generate_updmap 0"   					>> texlive.profile \
  && echo "tlpdbopt_install_docfiles 1"   					>> texlive.profile \
  && echo "tlpdbopt_install_srcfiles 1"   					>> texlive.profile \
  && echo "tlpdbopt_post_code 1"   							>> texlive.profile \
  && echo "tlpdbopt_sys_bin /usr/local/bin"   				>> texlive.profile \
  && echo "tlpdbopt_sys_info /usr/local/info"   				>> texlive.profile \
  && echo "tlpdbopt_sys_man /usr/local/man"   				>> texlive.profile \
  && echo "tlpdbopt_w32_multi_user 1"   						>> texlive.profile \
  && perl ./install-tl --profile texlive.profile --no-interaction \
  && cd / \
  && rm -rf /tmp/install-tl*
