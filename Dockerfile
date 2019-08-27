FROM jboss/keycloak

ENV KEYCLOAK_USER admin
ENV KEYCLOAK_PASSWORD admin

RUN cd /opt/jboss
RUN git clone https://github.com/C-ore/id-theme-core.git
RUN cp -r id-theme-core/resources/theme/core keycloak/themes/

ENV KEYCLOAK_WELCOME_THEME core
ENV KEYCLOAK_DEFAULT_THEME core

