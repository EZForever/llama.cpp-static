FROM scratch
COPY --chown=0:0 --chmod=755 llama-cli /llama-cli
ENV LC_ALL=C.utf8
ENTRYPOINT ["/llama-cli"]
