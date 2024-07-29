workspace(name = "rules_play_routes")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# rules_java
http_archive(
    name = "rules_java",
    sha256 = "41131de4417de70b9597e6ebd515168ed0ba843a325dc54a81b92d7af9a7b3ea",
    urls = [
        "https://github.com/bazelbuild/rules_java/releases/download/7.9.0/rules_java-7.9.0.tar.gz",
    ],
)

load("@rules_java//java:repositories.bzl", "rules_java_dependencies")

rules_java_dependencies()

register_toolchains("//:repository_default_toolchain_21_definition")

# rules_jvm_external
rules_jvm_external_version = "6.2"

http_archive(
    name = "rules_jvm_external",
    sha256 = "aa39ecd47e16d5870eba817fe71476802bc371fe2724a2ddee565992df55f4af",
    strip_prefix = "rules_jvm_external-{}".format(rules_jvm_external_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/{}.zip".format(rules_jvm_external_version),
)

load("@rules_jvm_external//:repositories.bzl", "rules_jvm_external_deps")

rules_jvm_external_deps()

load("@rules_jvm_external//:setup.bzl", "rules_jvm_external_setup")

rules_jvm_external_setup()

# Set up 3rd party jvm dependencies
load("//:workspace.bzl", "play_routes_repositories")

play_routes_repositories(
    play_version = "3.0",
    scala_version = "2.13",
)

load("@play_routes//:defs.bzl", play_routes_pinned_maven_install = "pinned_maven_install")

play_routes_pinned_maven_install()

load("//:test_workspace.bzl", "play_routes_test_repositories")

play_routes_test_repositories()

load("@play_routes_test//:defs.bzl", play_routes_test_pinned_maven_install = "pinned_maven_install")

play_routes_test_pinned_maven_install()

# Skylib
skylib_version = "1.5.0"  # update this as needed

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
    sha256 = "62bd2e60216b7a6fec3ac79341aa201e0956477e7c8f6ccc286f279ad1d96432",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/stardoc/releases/download/0.6.2/stardoc-0.6.2.tar.gz",
        "https://github.com/bazelbuild/stardoc/releases/download/0.6.2/stardoc-0.6.2.tar.gz",
    ],
)

load("@io_bazel_stardoc//:setup.bzl", "stardoc_repositories")

stardoc_repositories()

load("@io_bazel_stardoc//:deps.bzl", "stardoc_external_deps")

stardoc_external_deps()

load("@stardoc_maven//:defs.bzl", stardoc_pinned_maven_install = "pinned_maven_install")

stardoc_pinned_maven_install()

# com_github_bazelbuild_buildtools

# buildifier
buildtools_version = "4.2.2"

http_archive(
    name = "com_github_bazelbuild_buildtools",
    sha256 = "ae34c344514e08c23e90da0e2d6cb700fcd28e80c02e23e4d5715dddcb42f7b3",
    strip_prefix = "buildtools-{}".format(buildtools_version),
    url = "https://github.com/bazelbuild/buildtools/archive/refs/tags/{}.tar.gz".format(buildtools_version),
)

# buildifier is written in Go and hence needs rules_go to be built.
# See https://github.com/bazelbuild/rules_go for the up to date setup instructions.
http_archive(
    name = "io_bazel_rules_go",
    sha256 = "6dc2da7ab4cf5d7bfc7c949776b1b7c733f05e56edc4bcd9022bb249d2e2a996",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.39.1/rules_go-v0.39.1.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.39.1/rules_go-v0.39.1.zip",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_rules_dependencies")

go_rules_dependencies()

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains")

go_register_toolchains(version = "1.20.3")

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

# higherkindness/rules_scala (used for tests only)
# TODO: Move tests into their own worskpace s.t. we don't need their dependenices here
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
    actual = "@rules_scala_annex//src/main/scala:zinc_3",
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

## delete all this when cli changes are published upstream

skylib_version = "1.4.1"

http_archive(
    name = "bazel_skylib",
    sha256 = "b8a1527901774180afc798aeb28c4634bdccf19c4d98e7bdd1ce79d1fe9aaad7",
    type = "tar.gz",
    url = "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib-{}.tar.gz".format(skylib_version, skylib_version),
)

graknlabs_bazel_distribution_version = "ebb4660cff37574876d37bf7c498bd735155554f"

http_archive(
    name = "graknlabs_bazel_distribution",
    sha256 = "c3181786d2544a7df54bcf326d5e40e6ec0b86dbc6c42e58d40f8c2c2225859f",
    strip_prefix = "bazel-distribution-{}".format(graknlabs_bazel_distribution_version),
    type = "zip",
    url = "https://github.com/graknlabs/bazel-distribution/archive/{}.zip".format(graknlabs_bazel_distribution_version),
)

# Make COMPILER_CLI_ARTIFACT_ID available in BUILD files
env_vars_to_bzl_vars_version = "d67a600bb0917cd0e1c7a17ee78a3e2110fdbde2"

http_archive(
    name = "env_vars_to_bzl_vars",
    sha256 = "f0f7077a83590ff566c8ef17b74ca02728592f6f400eecb6d3ccef8997a9f41d",
    strip_prefix = "env_vars_to_bzl_vars-{}".format(env_vars_to_bzl_vars_version),
    type = "zip",
    url = "https://github.com/SrodriguezO/env_vars_to_bzl_vars/archive/{}.zip".format(env_vars_to_bzl_vars_version),
)

load("@env_vars_to_bzl_vars//:env_vars_loader.bzl", "load_env_vars")

load_env_vars(
    name = "env_vars",
    env_vars = ["COMPILER_CLI_ARTIFACT_ID"],
)

# TODO: Once the tests are in their own workspaces, we might want to add a basic test for each of the defaults
# This would require a separate workspace for each compiler being tested
bind(
    name = "default-play-routes-compiler-cli",
    actual = "@play_routes_compiler_cli//play-routes-compiler",
)

# rules_pkg
rules_pkg_version = "0.10.1"

http_archive(
    name = "rules_pkg",
    sha256 = "d250924a2ecc5176808fc4c25d5cf5e9e79e6346d79d5ab1c493e289e722d1d0",
    urls = [
        "https://github.com/bazelbuild/rules_pkg/releases/download/{0}/rules_pkg-{0}.tar.gz".format(rules_pkg_version),
    ],
)

load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")

rules_pkg_dependencies()
