load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "nlohmann_json",
        build_file = "//third_party/nlohmann_json:nlohmann_json.BUILD",
        sha256 = "d69f9deb6a75e2580465c6c4c5111b89c4dc2fa94e3a85fcd2ffcd9a143d9273",
        strip_prefix = "json-3.11.2",
        urls = [
            "https://github.com/nlohmann/json/archive/refs/tags/v3.11.2.tar.gz",
        ],

    )