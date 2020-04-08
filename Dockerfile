FROM nvidia/cuda:10.2-devel-ubuntu18.04
LABEL maintainer "Sydney Anne Erickson <sydneyerickson@icloud.com>"

RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository -y ppa:longsleep/golang-backports 
RUN apt install -y golang-1.13 git libgmp-dev bc
RUN ln -s /usr/lib/go-1.13/bin/go /usr/bin/go
RUN ln -s /usr/lib/go-1.13/bin/gofmt /usr/bin/gofmt
RUN go get -u github.com/haya14busa/goverage
