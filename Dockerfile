FROM alpine:latest
RUN --mount=type=cache,target=/var/cache/apk \
    apk update && apk add pcsc-tools pcsc-lite opensc ccid

CMD ["pcscd", "--foreground", "--info"]
