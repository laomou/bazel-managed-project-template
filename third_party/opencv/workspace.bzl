load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "opencv",
        sha256 = "5e37b791b2fe42ed39b52d9955920b951ee42d5da95f79fbc9765a08ef733399",
        build_file = "//third_party/opencv:opencv.BUILD",
        strip_prefix = "opencv-3.4.16",
        urls = [
            "https://github.com/opencv/opencv/archive/3.4.16.tar.gz",
        ],
    )