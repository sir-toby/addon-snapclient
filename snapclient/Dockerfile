ARG BUILD_FROM
FROM $BUILD_FROM

ARG SNAPCAST_VERSION=0.35.0

# Add env
ENV LANG=C.UTF-8

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN \
    apk add --no-cache \
    alsa-plugins-pulse bash \
    --repository=https://dl-cdn.alpinelinux.org/package/edge/community/ "snapcast-client~=${SNAPCAST_VERSION}" \
    && rm -fr \
    /tmp/*


# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

