FROM icr.io/appcafe/open-liberty:full-java11-openj9-ubi

COPY --chown=1001:0 \
    src/main/liberty/config \
    /config/

COPY --chown=1001:0 \
    target/docker-spring-boot.war \
    /config/apps

#COPY --chown=1001:0 db2jars/db2jcc_license_cu.jar /config/
#COPY --chown=1001:0 db2jars/db2jcc_license_cisuz.jar /config/
#COPY --chown=1001:0 db2jars/db2jcc.jar /config/
#COPY --chown=1001:0 db2jars/db2jcc4.jar /config/
#COPY --chown=1001:0 truststore.jks /config/resources/security/truststore.jks
#COPY --chown=1001:0 keystore.jks /config/resources/security/keystore.jks


RUN configure.sh