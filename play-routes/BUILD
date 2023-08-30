# Borrowed from higherkindness/rules_scala

load("@bazel_skylib//:bzl_library.bzl", "bzl_library")
load("@io_bazel_skydoc//stardoc:stardoc.bzl", "stardoc")
load("@rules_pkg//:pkg.bzl", "pkg_tar")
load("@bazel_skylib//lib:paths.bzl", "paths")

[
    stardoc(
        name = paths.replace_extension(file, "_doc").replace("/", "_"),
        out = paths.replace_extension(file, ".md").replace("/", "_"),
        input = file,
        deps = [
            "//play-routes:bzl_internal",
        ],
    )
    for file in glob(["**/*.bzl"])
]

pkg_tar(
    name = "docs",
    srcs = [paths.replace_extension(file, ".md").replace("/", "_") for file in glob(["**/*.bzl"])],
    mode = "0644",
)

bzl_library(
    name = "bzl_internal",
    srcs = glob(["**/*.bzl"]),
    visibility = ["//visibility:public"],
    deps = [
        ":jdk_toolchain_utils",
        "@bazel_skylib//lib:dicts",
        "@bazel_skylib//lib:paths",
    ],
)

bzl_library(
    name = "jdk_toolchain_utils",
    srcs = ["@bazel_tools//tools/jdk:toolchain_utils.bzl"],
)

sh_binary(
    name = "play-routes-helper",
    srcs = ["play-routes-helper.sh"],
    visibility = ["//visibility:public"],
)
