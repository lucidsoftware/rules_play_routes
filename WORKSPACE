workspace(name = "io_bazel_rules_play_routes")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# rules_jvm_external
RULES_JVM_EXTERNAL_TAG = "2.5"
http_archive(
    name = "rules_jvm_external",
    sha256 = "249e8129914be6d987ca57754516be35a14ea866c616041ff0cd32ea94d2f3a1",
    strip_prefix = "rules_jvm_external-{}".format(RULES_JVM_EXTERNAL_TAG),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/{}.zip".format(RULES_JVM_EXTERNAL_TAG),
)

# Load dependencies
load("//:workspace.bzl", "play_routes_repositories")
play_routes_repositories("2.5")
load("@play_routes//:defs.bzl", play_routes_pinned_maven_install = "pinned_maven_install")
play_routes_pinned_maven_install()

load("//:test_workspace.bzl", "play_routes_test_repositories")
play_routes_test_repositories()
load("@play_routes_test//:defs.bzl", play_routes_test_pinned_maven_install = "pinned_maven_install")
play_routes_test_pinned_maven_install()

# Skylib
skylib_version = "0.9.0"  # update this as needed
http_archive(
    name = "bazel_skylib",
    sha256 = "a8677c64e2a58eb113f305784e6af9759cfa3f9a6eacb4d40531fe1bd6356aca",
    strip_prefix = "bazel-skylib-{}".format(skylib_version),
    type = "zip",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/{}.zip".format(skylib_version),
)

# rules_nodejs
# To use the JavaScript version of Sass, we need to first install nodejs
rules_nodejs_version = "0.34.0"
http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "5be393c5c7b83029c941238ea3f735ffac541538744d010fd1c3ed901386cec0",
    strip_prefix = "rules_nodejs-{}".format(rules_nodejs_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_nodejs/archive/{}.zip".format(rules_nodejs_version),
)

load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories")
node_repositories(package_json = [])

# rules_sass
rules_sass_version = "1.22.7" # update this as needed
http_archive(
    name = "io_bazel_rules_sass",
    sha256 = "a8b6d287a5d40d70662c4d6a1db282e9f3d34a0cf6acd091dfb4c85c9f7c6997",
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
http_archive(
    name = "io_bazel",
    sha256 = "2d86797a5b96163b7f5e9cbb8f09cc919066e7ee0fe1a614b79680ae36a14ef3",
    strip_prefix = "bazel-0.27.0",
    urls = ["https://github.com/bazelbuild/bazel/archive/0.27.0.zip"],
)
# Also for Skylint. Comes from
# https://github.com/cgrushko/proto_library/blob/master/WORKSPACE
protobuf_version = "3.9.0"
http_archive(
    name = "com_google_protobuf",
    sha256 = "8eb5ca331ab8ca0da2baea7fc0607d86c46c80845deca57109a5d637ccb93bb4",
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
rules_scala_annex_version = "584e319f61a7c15360831b367c9a092570df9659" # update this as needed
http_archive(
    name = "rules_scala_annex",
    sha256 = "9c9d9b0b4d995a0ed4aedfd6e3b201fe10cbb52b35c9bbec669138da56cd4f3b",
    strip_prefix = "rules_scala-{}".format(rules_scala_annex_version),
    type = "zip",
    url = "https://github.com/higherkindness/rules_scala/archive/{}.zip".format(rules_scala_annex_version),
)

bind(
    name = "default_scala",
    actual = "//scala:default_scala",
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
  actual = "//default-compiler-clis:scala_2_11_play_2_5"
)
