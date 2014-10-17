GIT
======

Utiliser cette image Docker : 

sudo docker run -e GIT_CONFIG_USERNAME=[ Your git username ] -e GIT_CONFIG_EMAIL=[ Your email address ] --name git -v [ Local git repository ]:/workspace --rm yanninho/git [ any git command ]

