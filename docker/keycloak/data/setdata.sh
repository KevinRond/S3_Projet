#!/bin/bash

timeout 300 /bin/bash -c 'until curl -sI -o /dev/null -w "%{http_code}\n" localhost:8180; do sleep 5; done;'

echo "beginning of finalisation ...."
/opt/keycloak/bin/kcadm.sh config credentials --server http://localhost:8180/ --realm master --user admin --password admin
/opt/keycloak/bin/kcadm.sh create realms -s realm=usager -s enabled=true -o
/opt/keycloak/bin/kcadm.sh create clients -r usager -f /var/tmp/frontend.json
/opt/keycloak/bin/kcadm.sh create clients -r usager -f /var/tmp/backend.json
/opt/keycloak/bin/kcadm.sh create partialImport -r usager -s ifResourceExists=OVERWRITE -f /var/tmp/users.json

echo -e -n "\r"
echo "server running ...."




