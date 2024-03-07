FROM ubuntu:22.04
RUN apt-get update && apt-get install -y squid apache2-utils gettext-base && apt-get clean && \
    ls -la /etc/squid || echo "Squid directory not found after installation."
COPY entry.sh /entry.sh
COPY squid.conf.template /etc/squid/squid.conf.template
RUN chmod a+x /entry.sh
EXPOSE 3128/tcp
ENTRYPOINT ["/entry.sh"]
