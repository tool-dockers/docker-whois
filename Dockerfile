FROM debian:buster-slim as build

RUN set -uex \
     && apt-get update \
     && DEBIAN_FRONTEND=noninteractive apt-get install -y gcc git gettext libidn11-dev make \
     && git clone https://github.com/rfc1036/whois.git \
     && cd whois && make && make install && cd ..

FROM debian:buster-slim AS release

LABEL "name"="tool-dockers/whois" \
      "maintainer"="tool-dockers" \
      "version"="${VERSION}" \
      "release"="5.4.3" \
      "vendor"="tool-dockers" \
      "summary"="Docker containing whois" \
      "description"="This package provides a commandline client for the WHOIS protocol, which queries online servers for information such as contact details for domains and IP address assignments."

ENV GROUP debian
ENV USER debian

RUN set -uex \
    && apt-get update -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libidn11 ntp \
    && apt-get -y autoremove --purge \
    && rm -rf /var/lib/apt/lists/* \
    && addgroup ${GROUP} \
    && adduser --system ${USER} \
    && usermod -a -G ${GROUP} ${USER}

COPY --from=build /usr/bin/whois /usr/bin/whois
COPY --from=build /usr/share/man/* /usr/share/man/

USER ${USER}

ENTRYPOINT [ "/usr/bin/whois" ]

CMD [ "--help" ]
