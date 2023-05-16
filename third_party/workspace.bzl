load("//third_party/zlib:workspace.bzl", zlib = "repo")
load("//third_party/opencv:workspace.bzl", opencv = "repo")
load("//third_party/google_test:workspace.bzl", google_test = "repo")

def workspace():
    opencv()
    zlib()
    google_test()
