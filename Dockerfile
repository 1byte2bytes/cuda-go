FROM nvidia/cuda:10.2-runtime-ubuntu18.04
LABEL maintainer "Sydney Anne Erickson <sydneyerickson@icloud.com>"

RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository -y ppa:longsleep/golang-backports 
RUN apt install -y golang-1.13 git
RUN echo export PATH=/usr/lib/go-1.13/bin/:\$HOME/go/bin:\$PATH >> ~/.bashrc
RUN export PATH=/usr/lib/go-1.13/bin/:$HOME/go/bin:$PATH && go get -u github.com/haya14busa/goverage
