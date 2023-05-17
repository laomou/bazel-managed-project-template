load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "google_protobuf",
        sha256 = "87407cd28e7a9c95d9f61a098a53cf031109d451a7763e7dd1253abf8b4df422",
        strip_prefix = "protobuf-3.19.1",
        urls = [
            "https://github.com/protocolbuffers/protobuf/archive/v3.19.1.tar.gz",
        ],
        patches = [
            "//third_party/google_protobuf:com_google_protobuf_fixes.diff",
        ],
        patch_args = [
            "-p1",
        ],
    )
