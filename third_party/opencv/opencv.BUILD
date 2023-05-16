load("@rules_foreign_cc//foreign_cc:defs.bzl", "cmake")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
)

OPENCV_MODULES = [
    "calib3d",
    "features2d",
    "highgui",
    # "video",
    # "videoio",
    "imgcodecs",
    "imgproc",
    "core",
]

OPENCV_SO_VERSION = "3.4"

OPENCV_SHARED_LIBS = False

_LINUX_CACHE_ENTRIES = {
    "CMAKE_BUILD_TYPE": "Release",
    "BUILD_LIST": ",".join(sorted(OPENCV_MODULES)),
    "BUILD_TESTS": "OFF",
    "BUILD_PERF_TESTS": "OFF",
    "BUILD_EXAMPLES": "OFF",
    "BUILD_SHARED_LIBS": "ON" if OPENCV_SHARED_LIBS else "OFF",
    "WITH_ITT": "OFF",
    "WITH_JASPER": "OFF",
    "WITH_JPEG": "ON",
    "WITH_PNG": "ON",
    "WITH_TIFF": "OFF",
    "WITH_WEBP": "OFF",
    "WITH_OPENCL": "OFF",
    "OPENCV_FORCE_3RDPARTY_BUILD": "ON",
    "OPENCV_SKIP_VISIBILITY_HIDDEN": "ON" if not OPENCV_SHARED_LIBS else "OFF",
    "OPENCV_SKIP_PYTHON_LOADER": "ON",
    "BUILD_opencv_python": "OFF",
    "ENABLE_CCACHE": "OFF",
}

_ANDROID_CACHE_ENTRIES = dict(_LINUX_CACHE_ENTRIES.items() + {
    "ENABLE_NEON": "ON",
}.items())

cmake(
    name = "opencv",
    cache_entries = select({
        "@platforms//os:android": _ANDROID_CACHE_ENTRIES,
        "//conditions:default": _LINUX_CACHE_ENTRIES,
    }),
    generate_args = select({
        "@platforms//os:windows": ["-GNinja"],
        "//conditions:default": [],
    }),
    build_args = ["-j32"],
    lib_source = ":all_srcs",
    out_static_libs = [
        "libopencv_%s.a" % module
        for module in OPENCV_MODULES
    ]
)
