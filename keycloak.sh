#!/bin/bash

if [ -z "${KEYCLOAK_ADMIN_PASSWORD_FILE}" ]; then
  TMP_PASSWORD=$(cat "${KEYCLOAK_ADMIN_PASSWORD_FILE}")
  export KEYCLOAK_ADMIN_PASSWORD=$TMP_PASSWORD
fi

keycloak/bin/kc.sh "$@"
