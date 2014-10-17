GIT
======

Utiliser cette image Docker : 

sudo docker run --name git -v [ Local git repository ]:/workspace --rm yanninho/git [ any git command ]

Si problème, exécuter les commandes suivantes : 

sudo docker run --name git -v [ Local git repository ]:/workspace --rm yanninho/git git config --global user.name "[ Your username ]"
sudo docker run --name git -v [ Local git repository ]:/workspace --rm yanninho/git git config --global user.email "[ Your user email ]"
sudo docker run --name git -v [ Local git repository ]:/workspace --rm yanninho/git git config remote.origin.url "https://[ Your username]:[ Your password ]@github.com/[ Your username]/[ Your name project ].git"

