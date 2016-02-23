FROM dlsniper/docker-intellij
MAINTAINER bplotka

USER root
RUN apt-get update -q && \
    apt-get install -q -y --fix-missing make vim

ENV HOME /root
ENV GOPATH /root/go
ENV PATH $PATH:/root/go/bin:/usr/local/go/bin

WORKDIR /root/go

CMD /usr/local/bin/intellij
