# Borrowed from higherkindness/rules_scala

load("@bazel_skylib//:bzl_library.bzl", "bzl_library")
load("@io_bazel_stardoc//stardoc:stardoc.bzl", "stardoc")
load("@rules_pkg//:pkg.bzl", "pkg_tar")
load("@bazel_skylib//lib:paths.bzl", "paths")
load(":play-routes-toolchain.bzl", "play_routes_toolchain")

toolchain_type(name = "toolchain_type")

play_routes_toolchain(
    name = "default_play_routes_toolchain",
    play_routes_compiler = "//play-routes-compiler-cli",
)

toolchain(
    name = "cross_platform_play_routes_toolchain",
    toolchain = ":default_play_routes_toolchain",
    toolchain_type = ":toolchain_type",
)

[
    stardoc(
        name = paths.replace_extension(file, "_doc").replace("/", "_"),
        out = paths.replace_extension(file, ".md").replace("/", "_"),
        input = file,
        deps = [
            "//play_routes:bzl_internal",
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
