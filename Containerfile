FROM registry.redhat.io/openjdk/openjdk-8-rhel8

MAINTAINER Juan Froylan Alanis Alanis <isc.jfaa@gmail.com>

USER root

RUN dnf install -y httpd && \
    dnf clean all

COPY simplestyle_horizon /var/www/html/


CMD ["httpd", "-D", "FOREGROUND"]
