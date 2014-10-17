GIT
======

- Utiliser cette image Docker : 

sudo docker run --name git -v [ Local git repository ]:/workspace --rm yanninho/git [ any git command ]



- Si problème, exécuter les commandes suivantes : 

sudo docker run --name git -v [ Local git repository ]:/workspace --rm yanninho/git git config --global user.name "[ Your username ]"


sudo docker run --name git -v [ Local git repository ]:/workspace --rm yanninho/git git config --global user.email "[ Your user email ]"


sudo docker run --name git -v [ Local git repository ]:/workspace --rm yanninho/git git config remote.origin.url "https://[ Your username]:[ Your password ]@github.com/[ Your username]/[ Your name project ].git"


- Il est possible de configurer des alias pour faciliter l'utilisation. par exemple : 

alias git_[ project name ]='sudo docker run --name git -v [ Local git repository ]:/workspace --rm yanninho/git git'

Vous pouvez mettre cette ligne dans ~/.bashrc pour l'avoir au démarrage ou taper source ~/.bashrc pour effet immédiat.
Désormais en exécutant git_[ project name ] [ status|commit|pull|push ] vous agissez sur votre projet avec git.
