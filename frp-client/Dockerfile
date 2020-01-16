FROM busybox:latest

ADD fs/ /

VOLUME ["/data/log"]

ENTRYPOINT ["/entrypoint.sh"]

CMD ["frpc", "-c", "/etc/conf/frpc.ini"]

