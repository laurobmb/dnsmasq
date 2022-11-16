FROM alpine:3.13

ENV VERSION=2.84

WORKDIR /build
RUN apk --no-cache add linux-headers nettle-dev alpine-sdk
ADD http://www.thekelleys.org.uk/dnsmasq/dnsmasq-$VERSION.tar.gz /build

RUN tar zxvf dnsmasq-$VERSION.tar.gz
RUN cd dnsmasq-$VERSION && \
    sed -ie 's/TIMEOUT 10/TIMEOUT 1800/' src/config.h && \
    make && make install

#VOLUME /etc/dnsmasq

COPY dnsmasq.conf /etc/dnsmasq.conf 

#VOLUME /etc/dnsmasq.conf 

EXPOSE 53 53/udp

ENTRYPOINT ["dnsmasq","--no-daemon","--log-queries","--keep-in-foreground","--log-facility=-"]

