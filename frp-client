FROM busybox:latest

ADD client-fs/ /

VOLUME ["/data/log"]

ENTRYPOINT ["/entrypoint.sh"]

CMD ["frpc", "-c", "/etc/conf/frpc.ini"]

