FROM gitlab/gitlab-runner:latest
RUN apt update
# Install TexLive
RUN apt install latexmk texlive texlive-bibtex-extra biber texlive-fonts-extra texlive-lang-german texlive-latex-extra -y

