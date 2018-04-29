workspace(name = "io_bazel_rules_play_routes")

http_archive(
 name = "rules_scala_annex",
 sha256 = "3d3e01d7a74c6e0b8ba0a5d8d56d0c6e266a7e3ec03894bb82957e05c490f22a",
 strip_prefix = "rules_scala_annex-03ad6af70ae95dbbcfa1882cf7cf7fc487668c1b",
 url = "https://github.com/lucidsoftware/rules_scala_annex/archive/03ad6af70ae95dbbcfa1882cf7cf7fc487668c1b.zip",
)

load("@rules_scala_annex//rules/scala:workspace.bzl", "annex_scala_register_toolchains", "annex_scala_repository", "annex_scala_repositories")

annex_scala_repositories()
annex_scala_register_toolchains()

annex_scala_repository("scala", ("org.scala-lang", "2.11.11"), "@compiler_bridge_2_11//:src")

git_repository(
    name = "io_bazel_rules_sass",
    remote = "https://github.com/bazelbuild/rules_sass.git",
    tag = "0.0.3",
)
load("@io_bazel_rules_sass//sass:sass.bzl", "sass_repositories")
sass_repositories()

git_repository(
    name = "io_bazel_skydoc",
    remote = "https://github.com/bazelbuild/skydoc.git",
    tag = "0.1.4",
)
load("@io_bazel_skydoc//skylark:skylark.bzl", "skydoc_repositories")
skydoc_repositories()

# For Skylint
# Once https://github.com/bazelbuild/bazel/issues/4086 is done, this should be
# much simpler
http_archive(
  name = "io_bazel",
  url = "https://github.com/bazelbuild/bazel/releases/download/0.10.0/bazel-0.10.0-dist.zip",
  sha256 = "47e0798caaac4df499bce5fe554a914abd884a855a27085a4473de1d737d9548",
)
# Also for Skylint. Comes from
# https://github.com/cgrushko/proto_library/blob/master/WORKSPACE
http_archive(
  name = "com_google_protobuf",
  sha256 = "cef7f1b5a7c5fba672bec2a319246e8feba471f04dcebfe362d55930ee7c1c30",
  strip_prefix = "protobuf-3.5.0",
  urls = ["https://github.com/google/protobuf/archive/v3.5.0.zip"],
)

load("//:workspace.bzl", "play_routes_repositories")

play_routes_repositories()

load("//:test_workspace.bzl", "play_routes_test_repositories")

play_routes_test_repositories()
