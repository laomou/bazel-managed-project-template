load("//third_party/zlib:workspace.bzl", zlib = "repo")
load("//third_party/opencv:workspace.bzl", opencv = "repo")

def workspace():
    opencv()
    zlib()
