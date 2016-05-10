FROM dlsniper/docker-intellij
MAINTAINER bplotka

USER root
RUN apt-get update -q && \
    apt-get install -q -y --fix-missing make vim python2.7 python-pip libcgroup-dev libevent-dev libzmq-dev netcat cgroup-bin

RUN pip install glog

ENV HOME /root
ENV GOPATH /root/go
ENV PATH $PATH:/root/go/bin:/usr/local/go/bin

WORKDIR /root/go

CMD /usr/local/bin/intellij
