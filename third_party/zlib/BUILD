load("@rules_cc//cc:defs.bzl", "cc_binary")

exports_files(
    [
        "zlib.BUILD",
    ],
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "zlib_usage_example",
    srcs = ["example.cc"],
    deps = ["@zlib"],
)

sh_test(
    name = "test_zlib",
    srcs = ["test_zlib.sh"],
    data = [":zlib_usage_example"],
    visibility = ["//:__pkg__"],
)
