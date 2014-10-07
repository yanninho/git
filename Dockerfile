FROM yanninho/ssh 

MAINTAINER	Yannick Saint Martino 

RUN groupadd gituser && useradd gituser -s /bin/bash -m -g gituser -G gituser && adduser gituser sudo
RUN echo 'gituser:gituser' |chpasswd

RUN mkdir -p /home/gituser/workspace

RUN apt-get -y install git sudo 

VOLUME ["/home/gituser/workspace"]


