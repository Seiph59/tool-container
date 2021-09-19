FROM alpine:3.14
RUN apk update && \
    apk upgrade && \
    apk add --no-cache iputils tcptraceroute bind curl wget busybox-extras
CMD /bin/bash -c "trap : TERM INT; sleep infinity & wait"
