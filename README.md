Exemple Usager 
===================

Dans cet exemple vous retrouverez différentes méthodes pour accéder aux informations d'un usager provenant du serveur d'authentification. Il y a un exemple pour y accéder via un service (api) et un autre pour s'authentifier via une page web.

### Structure du projet

Le projet usager est composé de deux modules soit docker et service.


## Comment l'exécuter

### Module docker

Mettre en place dans docker, keycloak, webserver et postgres (cette dernière n'est pas utilisée pour cet exemple). Assurez vous que docker est démarré.

- ```cd docker ```
- ```docker-compose up -d```

Le container webserver sert de serveur web pour les pages statiques de html et javascript. La page principle de test est index.html dans le répertoire usager. Pour la tester il faut l'invoquer dans un navigateur avec l'url http://localhost/usager. Pour fonctionner correctement il faut que les servcies soient démarrrés (voir section suivante).

### Module service

- Démarrer le service en exécutant le **service.main** dans intellij
- Vérifier le fonctionnement des api en exécutant les commandes suivantes dans un terminal.

```
export access_token=$(\
curl -X POST http://localhost:8180/realms/usager/protocol/openid-connect/token \
--user backend:secret \
-H 'content-type: application/x-www-form-urlencoded' \
-d 'username=maif1401&password=projet&grant_type=password' | jq --raw-output '.access_token' \
)

curl -v -X GET \
http://localhost:8888/api/any \
-H "Authorization: Bearer "$access_token

curl -v -X GET \
http://localhost:8888/api/teacher \
-H "Authorization: Bearer "$access_token


    curl -v -X GET \
          http://localhost:8888/api/student \
          -H "Authorization: Bearer "$access_token
```


Finalement appeler l'url http://localhost/usager dans un navigateur.
