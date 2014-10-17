FROM debian 

MAINTAINER	Yannick Saint Martino 

ENV USERNAME example
ENV EMAIL example@example.com

RUN apt-get update && apt-get -y install git sudo && rm -rf /var/lib/apt/lists/*
RUN git config --global color.ui true
RUN git config --global user.name $USERNAME
RUN git config --global user.email $EMAIL

VOLUME ["/workspace"]
WORKDIR /workspace

CMD git status
