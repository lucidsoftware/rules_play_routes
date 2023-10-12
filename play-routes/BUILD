# Borrowed from higherkindness/rules_scala

load("@bazel_skylib//:bzl_library.bzl", "bzl_library")
load("@bazel_skylib//lib:paths.bzl", "paths")


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
