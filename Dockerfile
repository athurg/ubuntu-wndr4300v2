FROM ubuntu:10.04
MAINTAINER Athurg Gooth<athurg@gooth.org>

RUN sed -i 's/archive.ubuntu.com/old-releases.ubuntu.com/' /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
		build-essential gawk unzip wget flex zlib1g-dev libncurses5-dev autoconf git-core \
		texlive tex4ht texlive-lang-french
ENV GIT_HOME="/wndr/git_home"
WORKDIR /wndr
