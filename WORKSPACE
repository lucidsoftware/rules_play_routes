workspace(name = "io_bazel_rules_play_routes")

rules_scala_annex_version = "24f560a5460020399777f93c6091a726de63ca01" # update this as needed
http_archive(
    name = "rules_scala_annex",
    sha256 = "b6c1ac64d013fdf855f71dfd065f7f5b38c0120d18d64c0593f4b256033bdb02",
    strip_prefix = "rules_scala_annex-%s" % rules_scala_annex_version,
    url = "https://github.com/lucidsoftware/rules_scala_annex/archive/%s.zip" % rules_scala_annex_version,
)

load("@rules_scala_annex//rules/scala:workspace.bzl", "annex_scala_register_toolchains", "annex_scala_repository", "annex_scala_repositories")
annex_scala_repositories()
annex_scala_register_toolchains()
annex_scala_repository("scala", ("org.scala-lang", "2.11.12"), "@compiler_bridge_2_11//:src")

skylib_version = "7490380c6bbf9a5a060df78dc2222e7de6ffae5c"  # update this as needed
http_archive(
    name = "bazel_skylib",
    strip_prefix = "bazel-skylib-%s" % skylib_version,
    type = "zip",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/%s.zip" % skylib_version,
)

# To use the JavaScript version of Sass, we need to first install nodejs
http_archive(
    name = "build_bazel_rules_nodejs",
    url = "https://github.com/bazelbuild/rules_nodejs/archive/0.8.0.zip",
    strip_prefix = "rules_nodejs-0.8.0",
    sha256 = "4e40dd49ae7668d245c3107645f2a138660fcfd975b9310b91eda13f0c973953",
)
load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories")
node_repositories(package_json = [])

rules_sass_version = "96e5bee5c6c0727a320b8d092eff762c81c33c19" # update this as needed
http_archive(
    name = "io_bazel_rules_sass",
    sha256 = "1febebd855d2582950e967bbc09ef6e3a558ad33e0ca9ef33dad3bfa76f95a0e",
    strip_prefix = "rules_sass-%s" % rules_sass_version,
    url = "https://github.com/bazelbuild/rules_sass/archive/%s.zip" % rules_sass_version,
)
load("@io_bazel_rules_sass//sass:sass_repositories.bzl", "sass_repositories")
sass_repositories()

skydoc_version = "f531844d137c7accc44d841c08a2a2a366688571" # update this as needed
http_archive(
    name = "io_bazel_skydoc",
    sha256 = "071536265b1d99c1eea3bd59df8f0c28e806b00c8e8e3ca8e2d82ede96a561bc",
    strip_prefix = "skydoc-%s" % skydoc_version,
    url = "https://github.com/bazelbuild/skydoc/archive/%s.zip" % skydoc_version,
)
load("@io_bazel_skydoc//skylark:skylark.bzl", "skydoc_repositories")
skydoc_repositories()

# For Skylint
# Once https://github.com/bazelbuild/bazel/issues/4086 is done, this should be
# much simpler
http_archive(
    name = "io_bazel",
    url = "https://github.com/bazelbuild/bazel/releases/download/0.16.0/bazel-0.16.0-dist.zip",
    sha256 = "c730593916ef0ba62f3d113cc3a268e45f7e8039daf7b767c8641b6999bd49b1",
)
# Also for Skylint. Comes from
# https://github.com/cgrushko/proto_library/blob/master/WORKSPACE
http_archive(
    name = "com_google_protobuf",
    sha256 = "d7a221b3d4fb4f05b7473795ccea9e05dab3b8721f6286a95fffbffc2d926f8b",
    strip_prefix = "protobuf-3.6.1",
    urls = ["https://github.com/google/protobuf/archive/v3.6.1.zip"],
)

load("//:workspace.bzl", "play_routes_repositories")
play_routes_repositories()

load("//:test_workspace.bzl", "play_routes_test_repositories")
play_routes_test_repositories()
