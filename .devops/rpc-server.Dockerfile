FROM scratch
COPY --chown=0:0 --chmod=755 rpc-server /rpc-server
ENV LC_ALL=C.utf8
ENTRYPOINT ["/rpc-server"]
