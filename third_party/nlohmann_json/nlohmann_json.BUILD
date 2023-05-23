load("@rules_foreign_cc//foreign_cc:defs.bzl", "cmake")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

cmake(
    name = "json",
    cache_entries = {
        "JSON_CI": "OFF",
        "JSON_BuildTests": "OFF",
        "JSON_MultipleHeaders": "OFF",
    },
    generate_args = select({
        "@platforms//os:windows": ["-GNinja"],
        "//conditions:default": [],
    }),
    lib_source = ":all_srcs",
    out_headers_only = True,
)
