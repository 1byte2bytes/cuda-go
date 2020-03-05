FROM nvidia/cuda:10.2-runtime-ubuntu18.04
LABEL maintainer "Sydney Anne Erickson <sydneyerickson@icloud.com>"

RUN apt update && apt install -y software-properties-common && add-apt-repository -y ppa:longsleep/golang-backports && apt install -y golang-1.13
