load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "zlib",
        build_file = "//third_party/zlib:zlib.BUILD",
        sha256 = "d8688496ea40fb61787500e863cc63c9afcbc524468cedeb478068924eb54932",
        strip_prefix = "zlib-1.2.12",
        urls = [
            "https://github.com/madler/zlib/archive/refs/tags/v1.2.12.tar.gz",
        ],
    )