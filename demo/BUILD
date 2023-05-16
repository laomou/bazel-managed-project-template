load("@rules_cc//cc:defs.bzl", "cc_binary")

package(default_visibility = ["//visibility:public"])

cc_binary(
    name = "demo",
    srcs = ["main.cc"],
    deps = [
        "@zlib//:zlib",
        # "@opencv//:opencv",
    ],
)