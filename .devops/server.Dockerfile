FROM scratch
COPY --chown=0:0 --chmod=755 server /server
ENV LC_ALL=C.utf8
ENTRYPOINT ["/server"]
