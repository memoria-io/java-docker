FROM memoriaio/java-docker

ARG KEYCLOAK_VERSION=25.0.4

ADD https://github.com/keycloak/keycloak/releases/download/${KEYCLOAK_VERSION}/keycloak-${KEYCLOAK_VERSION}.tar.gz keycloak.tar.gz
COPY keycloak.sh keycloak.sh

RUN chown -R ubuntu:ubuntu keycloak.tar.gz keycloak.sh
USER ubuntu:ubuntu

RUN tar -xvzf keycloak.tar.gz
RUN mv keycloak-${KEYCLOAK_VERSION} keycloak

ENTRYPOINT ["bash", "keycloak.sh"]