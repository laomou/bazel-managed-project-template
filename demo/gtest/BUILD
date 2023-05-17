load("@rules_cc//cc:defs.bzl", "cc_binary")

package(default_visibility = ["//visibility:public"])

cc_binary(
    name = "gtest_demo",
    srcs = ["test.cc"],
    deps = [
        "@google_googletest//:gtest_main",
    ],
)