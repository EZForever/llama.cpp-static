FROM scratch
COPY --chown=0:0 --chmod=755 llama-server /llama-server
ENV LC_ALL=C.utf8
ENTRYPOINT ["/llama-server"]
