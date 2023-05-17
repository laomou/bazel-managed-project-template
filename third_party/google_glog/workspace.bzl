load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "google_glog",
        sha256 = "58c9b3b6aaa4dd8b836c0fd8f65d0f941441fb95e27212c5eeb9979cfd3592ab",
        strip_prefix = "glog-0a2e5931bd5ff22fd3bf8999eb8ce776f159cda6",
        urls = [
            "https://github.com/google/glog/archive/0a2e5931bd5ff22fd3bf8999eb8ce776f159cda6.zip",
        ],
    )
    maybe(
        http_archive,
        name = "google_glog_no_gflags",
        sha256 = "58c9b3b6aaa4dd8b836c0fd8f65d0f941441fb95e27212c5eeb9979cfd3592ab",
        strip_prefix = "glog-0a2e5931bd5ff22fd3bf8999eb8ce776f159cda6",
        urls = [
            "https://github.com/google/glog/archive/0a2e5931bd5ff22fd3bf8999eb8ce776f159cda6.zip",
        ],
        patches = [
            "//third_party/google_glog:com_google_glog_9779e5ea6ef59562b030248947f787d1256132ae.diff",
        ],
        patch_args = [
            "-p1",
        ],
    )
