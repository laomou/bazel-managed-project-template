load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "opencl_headers",
        sha256 = "ca8090359654e94f2c41e946b7e9d826253d795ae809ce7c83a7d3c859624693",
        build_file = "//third_party/opencl_headers:opencl_headers.BUILD",
        strip_prefix = "OpenCL-Headers-dcd5bede6859d26833cd85f0d6bbcee7382dc9b3",
        urls = [
            "https://github.com/KhronosGroup/OpenCL-Headers/archive/dcd5bede6859d26833cd85f0d6bbcee7382dc9b3.tar.gz",
        ],
    )