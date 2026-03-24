# llama.cpp-static
Your daily, minimal build of llama.cpp. [Also available on Docker Hub.](https://hub.docker.com/r/ezforever/llama.cpp-static)

Source code: <https://github.com/ggml-org/llama.cpp>  
Built from: <https://github.com/EZForever/llama.cpp-static>

## Usage

Please refer to llama.cpp official docs:

- [llama.cpp docker guide](https://github.com/ggml-org/llama.cpp/blob/master/docs/docker.md)
- [llama-cli README](https://github.com/ggml-org/llama.cpp/blob/master/tools/cli/README.md)
- [llama-server README](https://github.com/ggml-org/llama.cpp/blob/master/tools/server/README.md)

## Tag format

**tl;dr:** If you don't know which image tag to use, choose `cli-ssl-avx2` for running models on your computer (access from command-line), or `server-ssl-avx2` for server deployment.

CLI and server images are tagged in the format of `cli-<ssl>-<avx>` and `server-<ssl>-<avx>`, respectively.

`<ssl>` is one of the following:

- `nossl`: Minimal build with no SSL/TLS capability. 
- `ssl`: Built with OpenSSL (`LLAMA_OPENSSL=ON`), thus with SSL and model downloading support.

`<avx>` is one of the following:

- `noavx`: All AVX-related optimizations are disabled. Do not use this build unless you are working around some known bug, or running LLMs on a 10-year-old potato.
- `avx`: (Only) AVX instruction set is enabled. Might be useful if you are using some old CPUs that don't support AVX2.
- `avx2`: AVX2 instruction set is enabled. This build should support most modern/recent CPUs with reasonable performance.
- `avx512`: AVX512 base instruction set is enabled. Currently only some high-end or server-grade CPUs support this instruction set, so check your hardware specs before using this build.

RPC server images are tagged in the format of `rpc-server-<ssl>-<avx>`. Refer to [rpc-server README](https://github.com/ggml-org/llama.cpp/blob/master/tools/rpc/README.md) for detailed information.

