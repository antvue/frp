# frp
frp server for common use

### server config example

```yml
version: '3.4'

services:
  server:
    image: antvue/frp:server-v1
    restart: always
    ports:
      - 80:80/udp
      - 443:443/udp
      - 7000:7000
    environment:
      CONFIG: |
        [common]
        bind_port = 7000
        bind_udp_port = 80
        kcp_bind_port = 443

```

### client config example

```yml
version: '3.4'

services:
  client:
    image: antvue/frp:client-v1
    restart: always
    environment:
      CONFIG: |
        [common]
        server_addr = x.x.x.x
        server_port = 7000
        protocol = tcp

        [test]
        type = tcp
        local_ip = 0.0.0.0
        local_port = 8080

```

### builid
```bash
docker build -f frp-client -t antvue/frp:client-v1 --squash .
docker build -f frp-server -t antvue/frp:server-v1 --squash .
docker build -f frp-client-arm64v8 -t antvue/frp:client-arm64v8-v1 --squash .
docker build -f frp-server-arm64v8 -t antvue/frp:server-arm64v8-v1 --squash .
docker push antvue/frp:client-v1
docker push antvue/frp:client-arm64v8-v1
docker push antvue/frp:server-arm64v8-v1
docker push antvue/frp:server-v1
```

