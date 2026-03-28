FROM sonarqube:community

ENV SONAR_PATH_DATA=/opt/mount/data
ENV SONAR_PATH_EXTENSIONS=/opt/mount/extensions
ENV SONAR_PATH_LOGS=/opt/mount/logs
ENV SONAR_PATH_TEMP=/opt/mount/temp

USER root

# Copia lo script custom
COPY sonar/entrypoint.sh /railway-sonar-entrypoint.sh
RUN chmod +x /railway-sonar-entrypoint.sh

ENTRYPOINT ["/railway-sonar-entrypoint.sh"]

# HEALTHCHECK: controlla lo stato di SonarQube
HEALTHCHECK --interval=30s --timeout=5s --retries=5 CMD curl -fsSL http://localhost:9000/api/system/health | grep -q '"status":"UP"' || exit 1

