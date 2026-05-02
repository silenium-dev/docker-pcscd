FROM alpine:latest
RUN --mount=type=cache,target=/var/cache/apk \
    apk add pcsc-tools pcsc-lite opensc

CMD ["pcscd", "--foreground", "--info"]
