'https://git.heroku.com/bitchproject.git'

The Gossip Bitch Project.

Le lien Heroku https://bitchproject.herokuapp.com/ ne fonctionne pas dû à un bug (Failed to install via Bundler / push rejected) bien avec les caprices d'hier pour voir l'application finale il faut :

    ```Cloner le repo```
    ```Faire un bundle install```
    ```Faire un rails db:create```
    ```Faire un rails db:migrate```
    ```Faire un rails db:seed```
    ```Taper "rails server" sur le terminal```
    ```Aller à l'adresse localhost:3000```
    
    Si jamais ça fonctionne entre temps : ```rails db:create => db:migrate => db:seed => localhost```
    
    Bisous
