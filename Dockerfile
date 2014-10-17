FROM debian 

MAINTAINER	Yannick Saint Martino 

RUN apt-get update && apt-get -y install git sudo && rm -rf /var/lib/apt/lists/*

echo '\n# git config\ngit config --global user.name "$GIT_CONFIG_USERNAME"\ngit config --global user.email "$GIT_CONFIG_EMAIL"' >> /root/.bashrc

VOLUME ["/workspace"]
WORKDIR /workspace

CMD git status
