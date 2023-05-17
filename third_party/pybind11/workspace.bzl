load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        http_archive,
        name = "pybind11_bazel",
        sha256 = "fec6281e4109115c5157ca720b8fe20c8f655f773172290b03f57353c11869c2",
        strip_prefix = "pybind11_bazel-72cbbf1fbc830e487e3012862b7b720001b70672",
        urls = ["https://github.com/pybind/pybind11_bazel/archive/72cbbf1fbc830e487e3012862b7b720001b70672.zip"],
    )
    maybe(
        http_archive,
        name = "pybind11",
        sha256 = "b971842fab1b5b8f3815a2302331782b7d137fef0e06502422bc4bc360f4956c",
        strip_prefix = "pybind11-70a58c577eaf067748c2ec31bfd0b0a614cffba6",
        urls = [
            "https://github.com/pybind/pybind11/archive/70a58c577eaf067748c2ec31bfd0b0a614cffba6.zip",
        ],
    )
