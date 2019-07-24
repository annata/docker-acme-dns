FROM neilpang/acme.sh
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh && mkdir -p /cert
STOPSIGNAL SIGTERM
CMD ["/docker-entrypoint.sh"]