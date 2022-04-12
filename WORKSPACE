workspace(name = "io_bazel_rules_play_routes")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# rules_jvm_external
RULES_JVM_EXTERNAL_TAG = "4.2"
http_archive(
    name = "rules_jvm_external",
    sha256 = "cd1a77b7b02e8e008439ca76fd34f5b07aecb8c752961f9640dea15e9e5ba1ca",
    strip_prefix = "rules_jvm_external-{}".format(RULES_JVM_EXTERNAL_TAG),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/{}.zip".format(RULES_JVM_EXTERNAL_TAG),
)

# Load dependencies
load("//:workspace.bzl", "play_routes_repositories")
play_routes_repositories("2.7")
load("@play_routes//:defs.bzl", play_routes_pinned_maven_install = "pinned_maven_install")
play_routes_pinned_maven_install()

load("//:test_workspace.bzl", "play_routes_test_repositories")
play_routes_test_repositories()
load("@play_routes_test//:defs.bzl", play_routes_test_pinned_maven_install = "pinned_maven_install")
play_routes_test_pinned_maven_install()

# Skylib
skylib_version = "1.0.2"  # update this as needed
http_archive(
    name = "bazel_skylib",
    sha256 = "64ad2728ccdd2044216e4cec7815918b7bb3bb28c95b7e9d951f9d4eccb07625",
    strip_prefix = "bazel-skylib-{}".format(skylib_version),
    type = "zip",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/{}.zip".format(skylib_version),
)

# rules_nodejs
# To use the JavaScript version of Sass, we need to first install nodejs
rules_nodejs_version = "1.4.1"
http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "6ea46cb994e349ceb255ec8340370883813cac825e6157770a15f11874d232d2",
    strip_prefix = "rules_nodejs-{}".format(rules_nodejs_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_nodejs/archive/{}.zip".format(rules_nodejs_version),
)

load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories")
node_repositories(package_json = [])

# rules_sass
rules_sass_version = "1.26.2" # update this as needed
http_archive(
    name = "io_bazel_rules_sass",
    sha256 = "a31026741e4af6f1e5bcc9cce23db0549ecdea6270c8919da09110886102eb8e",
    strip_prefix = "rules_sass-{}".format(rules_sass_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_sass/archive/{}.zip".format(rules_sass_version),
)
load("@io_bazel_rules_sass//:package.bzl", "rules_sass_dependencies")
rules_sass_dependencies()

load("@io_bazel_rules_sass//sass:sass_repositories.bzl", "sass_repositories")
sass_repositories()

# Skydoc
skydoc_version = "0.3.0" # update this as needed
http_archive(
    name = "io_bazel_skydoc",
    sha256 = "8762a212cff5f81505a1632630edcfe9adce381479a50a03c968bd2fc217972d",
    strip_prefix = "skydoc-{}".format(skydoc_version),
    type = "zip",
    url = "https://github.com/bazelbuild/skydoc/archive/{}.zip".format(skydoc_version),
)
load("@io_bazel_skydoc//skylark:skylark.bzl", "skydoc_repositories")
skydoc_repositories()

# For Skylint
# Once https://github.com/bazelbuild/bazel/issues/4086 is done, this should be
# much simpler
bazel_version = "0.27.0"
http_archive(
    name = "io_bazel",
    sha256 = "2d86797a5b96163b7f5e9cbb8f09cc919066e7ee0fe1a614b79680ae36a14ef3",
    strip_prefix = "bazel-{}".format(bazel_version),
    urls = ["https://github.com/bazelbuild/bazel/archive/{}.zip".format(bazel_version)],
)
# Also for Skylint. Comes from
# https://github.com/cgrushko/proto_library/blob/master/WORKSPACE
protobuf_version = "3.11.4"
http_archive(
    name = "com_google_protobuf",
    sha256 = "9748c0d90e54ea09e5e75fb7fac16edce15d2028d4356f32211cfa3c0e956564",
    strip_prefix = "protobuf-{}".format(protobuf_version),
    type = "zip",
    url = "https://github.com/protocolbuffers/protobuf/archive/v{}.zip".format(protobuf_version),
)
load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
protobuf_deps()

jdk_build_file_content = """
filegroup(
    name = "jdk",
    srcs = glob(["**/*"]),
    visibility = ["//visibility:public"],
)
filegroup(
    name = "java",
    srcs = ["bin/java"],
    visibility = ["//visibility:public"],
)
"""

http_archive(
    name = "jdk8-linux",
    build_file_content = jdk_build_file_content,
    sha256 = "dd28d6d2cde2b931caf94ac2422a2ad082ea62f0beee3bf7057317c53093de93",
    strip_prefix = "jdk8u212-b03",
    url = "https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_x64_linux_hotspot_8u212b03.tar.gz",
)

http_archive(
    name = "jdk8-osx",
    build_file_content = jdk_build_file_content,
    sha256 = "3d80857e1bb44bf4abe6d70ba3bb2aae412794d335abe46b26eb904ab6226fe0",
    strip_prefix = "jdk8u212-b03/Contents/Home",
    url = "https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_x64_mac_hotspot_8u212b03.tar.gz",
)

# higherkindness/rules_scala (used for tests only)
# TODO: Move tests into their own worskpace s.t. we don't need their dependenices here
rules_scala_annex_version = "ff423d8bdd0e5383f8f2c048ffd7704bb51a91bf" # update this as needed
http_archive(
    name = "rules_scala_annex",
    sha256 = "ae53e9ed5fecadc7baf4637b88109471602be73dda4e5ff6b4bf1767932703c0",
    strip_prefix = "rules_scala-{}".format(rules_scala_annex_version),
    type = "zip",
    url = "https://github.com/higherkindness/rules_scala/archive/{}.zip".format(rules_scala_annex_version),
)

bind(
    name = "default_scala",
    actual = "@rules_scala_annex//src/main/scala:zinc_2_12_10",
)

load("@rules_scala_annex//rules/scala:workspace.bzl", "scala_register_toolchains", "scala_repositories")
scala_repositories()
load("@annex//:defs.bzl", annex_pinned_maven_install = "pinned_maven_install")
annex_pinned_maven_install()
scala_register_toolchains()

# TODO: Once the tests are in their own workspaces, we might want to add a basic test for each of the defaults
# This would require a separate workspace for each compiler being tested
bind(
  name = "default-play-routes-compiler-cli",
  actual = "//default-compiler-clis:scala_2_12_play_2_7"
)
