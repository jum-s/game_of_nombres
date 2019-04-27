# Exercices de nombres

Quelques morceaux audios pour s'exercer à écouter des nombres en francais.

Application Sinatra/Ruby

basé sur les examples fournis par l'excellente base de données de sons [Common Voice](https://voice.mozilla.org/en/datasets)

## Debian / Ubuntu Install

Cloner le repo avec git

Installer les clés GPG pour [RVM](http://rvm.io/)
Installer RVM:

`curl -sSL https://get.rvm.io | bash -s stable`

Installer ruby 2.5.2

`rvm install 2.5.2`

Télécharger les samples audios de [Common Voice](https://voice.mozilla.org/en/datasets)

Extraire tous les fichiers (`tsv` et `mp3`) dans le dossier suivant :

`path/to/repo/game/public/data`

Aller dans le dossier

`cd path/to/repo`

Installer les dépendances

`bundle install`

Lancer le serveur

`ruby game/start.rb`

C'est parti sur [http://localhost:4567]
