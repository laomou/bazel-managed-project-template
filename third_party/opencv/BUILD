load("@rules_cc//cc:defs.bzl", "cc_binary")

exports_files(
    [
        "opencv.BUILD",
    ],
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "opencv_usage_example",
    srcs = ["example.cc"],
    deps = ["@opencv"],
)
