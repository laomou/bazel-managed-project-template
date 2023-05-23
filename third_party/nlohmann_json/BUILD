load("@rules_cc//cc:defs.bzl", "cc_binary")

exports_files(
    [
        "json.BUILD",
    ],
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "json_usage_example",
    srcs = ["example.cc"],
    deps = ["@nlohmann_json//:json"],
)
