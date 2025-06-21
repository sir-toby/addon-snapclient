ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG=C.UTF-8

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN \
    apk add --no-cache \
        alsa-plugins-pulse bash \
    && rm -fr \
        /tmp/*

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/v3.21/community/ snapcast-client=0.29.0-r0


# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

