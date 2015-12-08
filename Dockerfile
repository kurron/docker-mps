FROM kurron/docker-jetbrains-base:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

LABEL org.kurron.ide.name="MPS" org.kurron.ide.version=3.2.3

ADD http://download.jetbrains.com/mps/32/MPS-3.2.3.tar.gz /tmp/ide.tar.gz

RUN mkdir -p /opt/ide && \
    tar zxvf /tmp/ide.tar.gz --strip-components=1 -C /opt/ide && \
    rm /tmp/ide.tar.gz


USER developer:developer
WORKDIR /home/developer
ENTRYPOINT ["/opt/ide/mps.sh"]
