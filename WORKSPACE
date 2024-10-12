workspace(name = "rules_play_routes")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# rules_java
http_archive(
    name = "rules_java",
    sha256 = "6f3ce0e9fba979a844faba2d60467843fbf5191d8ca61fa3d2ea17655b56bb8c",
    urls = [
        "https://github.com/bazelbuild/rules_java/releases/download/7.11.1/rules_java-7.11.1.tar.gz",
    ],
)

load("@rules_java//java:repositories.bzl", "rules_java_dependencies")

rules_java_dependencies()

register_toolchains("//:repository_default_toolchain_21_definition")

# rules_jvm_external
rules_jvm_external_version = "6.4"

http_archive(
    name = "rules_jvm_external",
    sha256 = "8c92f7c7a57273c692da459f70bd72464c87442e86b9e0b495950a7c554c254f",
    strip_prefix = "rules_jvm_external-{}".format(rules_jvm_external_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/{}.zip".format(rules_jvm_external_version),
)

load("@rules_jvm_external//:repositories.bzl", "rules_jvm_external_deps")

rules_jvm_external_deps()

load("@rules_jvm_external//:setup.bzl", "rules_jvm_external_setup")

rules_jvm_external_setup()

# Set up 3rd party jvm dependencies
load(
    "//:workspace.bzl",
    "play_routes_compiler_cli_2_13_repositories",
    "play_routes_compiler_cli_3_repositories",
)

play_routes_compiler_cli_3_repositories()

load("@play_routes_compiler_cli_3//:defs.bzl", play_routes_compiler_cli_3_pinned_maven_install = "pinned_maven_install")

play_routes_compiler_cli_3_pinned_maven_install()

play_routes_compiler_cli_2_13_repositories()

load("@play_routes_compiler_cli_2_13//:defs.bzl", play_routes_compiler_cli_2_13_pinned_maven_install = "pinned_maven_install")

play_routes_compiler_cli_2_13_pinned_maven_install()

load("//:test_workspace.bzl", "play_routes_test_2_13_repositories", "play_routes_test_3_repositories")

play_routes_test_3_repositories()

load("@play_routes_test_3//:defs.bzl", play_routes_test_3_pinned_maven_install = "pinned_maven_install")

play_routes_test_3_pinned_maven_install()

play_routes_test_2_13_repositories()

load("@play_routes_test_2_13//:defs.bzl", play_routes_test_2_13_pinned_maven_install = "pinned_maven_install")

play_routes_test_2_13_pinned_maven_install()

# Play routes compiler
load("//play-routes-toolchain:register-toolchains.bzl", "play_routes_register_toolchains")

play_routes_register_toolchains(default_toolchain_name = "play-routes-3")

# Skylib
skylib_version = "1.7.1"  # update this as needed

http_archive(
    name = "bazel_skylib",
    sha256 = "19a99bc16079c8853f96d50e627afa158aa00bf52460f45f923466105ff8fe13",
    strip_prefix = "bazel-skylib-{}".format(skylib_version),
    type = "zip",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/{}.zip".format(skylib_version),
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

# Stardoc
http_archive(
    name = "io_bazel_stardoc",
    sha256 = "fabb280f6c92a3b55eed89a918ca91e39fb733373c81e87a18ae9e33e75023ec",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/stardoc/releases/download/0.7.1/stardoc-0.7.1.tar.gz",
        "https://github.com/bazelbuild/stardoc/releases/download/0.7.1/stardoc-0.7.1.tar.gz",
    ],
)

load("@io_bazel_stardoc//:setup.bzl", "stardoc_repositories")

stardoc_repositories()

load("@io_bazel_stardoc//:deps.bzl", "stardoc_external_deps")

stardoc_external_deps()

load("@stardoc_maven//:defs.bzl", stardoc_pinned_maven_install = "pinned_maven_install")

stardoc_pinned_maven_install()

# buildifier
buildtools_version = "7.3.1"

http_archive(
    name = "com_github_bazelbuild_buildtools",
    sha256 = "051951c10ff8addeb4f10be3b0cf474b304b2ccd675f2cc7683cdd9010320ca9",
    strip_prefix = "buildtools-{}".format(buildtools_version),
    url = "https://github.com/bazelbuild/buildtools/archive/refs/tags/v{}.tar.gz".format(buildtools_version),
)

# buildifier is written in Go and hence needs rules_go to be built.
# See https://github.com/bazelbuild/rules_go for the up to date setup instructions.
http_archive(
    name = "io_bazel_rules_go",
    sha256 = "f4a9314518ca6acfa16cc4ab43b0b8ce1e4ea64b81c38d8a3772883f153346b8",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.50.1/rules_go-v0.50.1.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.50.1/rules_go-v0.50.1.zip",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(version = "1.23.0")

# Also for buildifier. Comes from
# https://github.com/bazelbuild/buildtools/blob/master/buildifier/README.md
protobuf_version = "3.19.4"

http_archive(
    name = "com_google_protobuf",
    sha256 = "3bd7828aa5af4b13b99c191e8b1e884ebfa9ad371b0ce264605d347f135d2568",
    strip_prefix = "protobuf-{}".format(protobuf_version),
    url = "https://github.com/protocolbuffers/protobuf/archive/v{}.tar.gz".format(protobuf_version),
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

# higherkindness/rules_scala
rules_scala_annex_version = "f23c16037db66efb541dbbf5e17e6604886c85ff"

http_archive(
    name = "rules_scala_annex",
    integrity = "sha256-b/cPeh6J1Mq63u6fSWdEHAKL/kWfPhZcNL7m9If7PWM=",
    strip_prefix = "rules_scala-{}".format(rules_scala_annex_version),
    type = "zip",
    url = "https://github.com/lucidsoftware/rules_scala/archive/{}.zip".format(rules_scala_annex_version),
)

bind(
    name = "default_scala",
    actual = "//scala:default_scala",
)

load(
    "@rules_scala_annex//rules/scala:workspace.bzl",
    "scala_register_toolchains",
    "scala_repositories",
)

scala_repositories()

load("@annex//:defs.bzl", annex_pinned_maven_install = "pinned_maven_install")

annex_pinned_maven_install()

scala_register_toolchains()

# rules_pkg
rules_pkg_version = "1.0.1"

http_archive(
    name = "rules_pkg",
    sha256 = "d20c951960ed77cb7b341c2a59488534e494d5ad1d30c4818c736d57772a9fef",
    urls = [
        "https://github.com/bazelbuild/rules_pkg/releases/download/{0}/rules_pkg-{0}.tar.gz".format(rules_pkg_version),
    ],
)

load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")

rules_pkg_dependencies()
