#!/bin/bash

# Appel du processus d'attente du démarrage de keycloak et ajout des usage
echo "beginning of installation..."

/var/tmp/setdata.sh &
/opt/keycloak/bin/kc.sh start-dev --http-port 8180

