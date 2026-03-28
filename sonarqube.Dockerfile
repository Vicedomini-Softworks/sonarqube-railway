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
