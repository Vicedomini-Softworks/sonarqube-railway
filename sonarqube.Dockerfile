FROM sonarqube:community

ENV SONAR_PATH_DATA=/opt/mount/data
ENV SONAR_PATH_EXTENSIONS=/opt/mount/extensions
ENV SONAR_PATH_LOGS=/opt/mount/logs
ENV SONAR_PATH_TEMP=/opt/mount/temp

# Create directories and fix permissions
USER root
RUN mkdir -p /opt/mount/data /opt/mount/extensions /opt/mount/logs /opt/mount/temp \
    && chown -R 1000:1000 /opt/mount

USER sonarqube
