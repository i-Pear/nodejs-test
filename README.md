## Step 1

run `docker build .`.

## Step 2

get these files out, then modify `UK_ALIBS` and `UK_OLIBS` in unikraft Makefile.

```
UK_ALIBS:= /nodejs/node-v18.17.1/out/Release/obj.target/deps/histogram/libhistogram.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/uvwasi/libuvwasi.a /nodejs/node-v18.17.1/out/Release/obj.target/libnode.a /nodejs/node-v18.17.1/out/Release/obj.target/libnode_text_start.a /nodejs/node-v18.17.1/out/Release/obj.target/tools/v8_gypfiles/libv8_snapshot.a /nodejs/node-v18.17.1/out/Release/obj.target/tools/v8_gypfiles/libv8_libplatform.a /nodejs/node-v18.17.1/out/Release/obj.target/tools/icu/libicui18n.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/zlib/libzlib.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/llhttp/libllhttp.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/cares/libcares.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/uv/libuv.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/nghttp2/libnghttp2.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/brotli/libbrotli.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/openssl/libopenssl.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/ngtcp2/libngtcp2.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/ngtcp2/libnghttp3.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/base64/libbase64.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/base64/libbase64_ssse3.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/base64/libbase64_sse41.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/base64/libbase64_sse42.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/base64/libbase64_avx.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/base64/libbase64_avx2.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/simdutf/libsimdutf.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/ada/libada.a /nodejs/node-v18.17.1/out/Release/obj.target/tools/icu/libicuucx.a /nodejs/node-v18.17.1/out/Release/obj.target/tools/icu/libicudata.a /nodejs/node-v18.17.1/out/Release/obj.target/tools/v8_gypfiles/libv8_base_without_compiler.a /nodejs/node-v18.17.1/out/Release/obj.target/tools/v8_gypfiles/libv8_libbase.a /nodejs/node-v18.17.1/out/Release/obj.target/tools/v8_gypfiles/libv8_zlib.a /nodejs/node-v18.17.1/out/Release/obj.target/tools/v8_gypfiles/libv8_compiler.a /nodejs/node-v18.17.1/out/Release/obj.target/tools/v8_gypfiles/libv8_initializers.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/zlib/libzlib_inflate_chunk_simd.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/zlib/libzlib_adler32_simd.a /nodejs/node-v18.17.1/out/Release/obj.target/deps/zlib/libzlib_crc32_simd.a

UK_OLIBS:= /nodejs/node-v18.17.1/out/Release/obj.target/node_text_start/src/large_pages/node_text_start.o /nodejs/node-v18.17.1/out/Release/obj.target/node/src/node_main.o /nodejs/node-v18.17.1/out/Release/obj.target/node/gen/node_snapshot.o 
```

## Step 3

build unikraft, then you will get the final image.
