#!/bin/bash
set -e

# Crea directory se non esistono
mkdir -p "$SONAR_PATH_DATA" \
         "$SONAR_PATH_EXTENSIONS" \
         "$SONAR_PATH_LOGS" \
         "$SONAR_PATH_TEMP"

# Fix permessi (uid 1000 = utente sonarqube)
chown -R 1000:1000 /opt/mount

# Torna all'utente sonarqube
exec su -s /bin/bash sonarqube -c "/opt/sonarqube/docker/entrypoint.sh \"\$@\"" --
