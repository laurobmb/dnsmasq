[![Docker Repository on Quay](https://quay.io/repository/laurobmb/dnsmasq-app/status "Docker Repository on Quay")](https://quay.io/repository/laurobmb/dnsmasq-app)

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/laurobmb/dnsmasq-app)

# DNSMASQ App

### Build

    podman build -t dns:latest Dockerfile

### Run

    podman run -it --rm --name dns -p5351:53/udp dns:latest

### Comandos para testar

    nslookup -type=txt _http._tcp.conectado.local -port=5351 127.0.0.1