# llama.cpp-static
Your daily, minimal build of llama.cpp. [Also available on Docker Hub.](https://hub.docker.com/r/ezforever/llama.cpp-static)

Source code: <https://github.com/ggml-org/llama.cpp>
Built from: <https://github.com/EZForever/llama.cpp-static>

## Usage

Please refer to [llama.cpp docker guide](https://github.com/ggml-org/llama.cpp/blob/master/docs/docker.md) and [server README](https://github.com/ggml-org/llama.cpp/blob/master/tools/server/README.md).

## Tag format

**tl;dr:** Use `server-ssl-avx2` if you don't know what you're doing.

Server images are tagged in the format of `server-<ssl>-<avx>`.

`<ssl>` is one of the following:

- `nossl`: Minimal build with no SSL/TLS capability. 
- `ssl`: Built with OpenSSL (`LLAMA_SERVER_SSL=ON`), thus supports `--ssl-key-file` and `--ssl-cert-file`.

`<avx>` is one of the following:

- `noavx`: All AVX-related optimizations are disabled. Do not use this build unless you are working around some known bug, or running LLMs on a 10-year-old potato.
- `avx`: (Only) AVX instruction set is enabled. Might be useful if you are using some old CPUs that don't support AVX2.
- `avx2`: AVX2 instruction set is enabled. This build should support most modern/recent CPUs with reasonable performance.
- `avx512`: AVX512 base instruction set is enabled. Currently only some high-end or server-grade CPUs support this instruction set, so check your hardware specs before using this build.

RPC server images are tagged in the format of `rpc-server-<ssl>-<avx>`. Refer to [rpc README](https://github.com/ggml-org/llama.cpp/blob/master/tools/rpc/README.md) for detailed information.

