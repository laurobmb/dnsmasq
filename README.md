# DNSMASQ App
## Build
    sudo podman build -t dns:latest -f Dockerfile
    sudo podman tag localhost/dns:latest quay.io/lagomes/dnsmask:v1
    sudo podman push quay.io/lagomes/dnsmask:v1
### Run
    sudo podman run -it --rm --name dns -v ./dnsmasq.conf:/etc/dnsmasq.conf:Z --network=host dns:latest

    sudo podman run -it --rm --name dns -v ./dnsmasq.conf:/etc/dnsmasq.conf:Z --network=host quay.io/lagomes/dnsmask:v1

    sudo podman run -it --rm --name dns --network=host quay.io/lagomes/dnsmask:v1

### Comandos para testar
    nslookup -type=txt _http._tcp.conectado.local -port=5353 127.0.0.1




[![Docker Repository on Quay](https://quay.io/repository/laurobmb/dnsmasq-app/status "Docker Repository on Quay")](https://quay.io/repository/laurobmb/dnsmasq-app)

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/laurobmb/dnsmasq-app)

