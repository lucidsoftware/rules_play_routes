workspace(name = "io_bazel_rules_play_routes")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_annex_version = "eeefae00b6e12ffd514f49c399f8d0abff7e4182" # update this as needed
http_archive(
    name = "rules_scala_annex",
    sha256 = "7d0bfa327d177ae3258483082b5a2c2dff763aca53a20b07b6b2cc5e866ae9fd",
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
scala_register_toolchains()

skylib_version = "8cecf885c8bf4c51e82fd6b50b9dd68d2c98f757"  # update this as needed
http_archive(
    name = "bazel_skylib",
    sha256 = "d54e5372d784ceb365f7d38c3dad7773f73b3b8ebc8fb90d58435a92b6a20256",
    strip_prefix = "bazel-skylib-{}".format(skylib_version),
    type = "zip",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/{}.zip".format(skylib_version),
)

# To use the JavaScript version of Sass, we need to first install nodejs
rules_nodejs_version = "84882ba224f51f85d589e9cd45b30758cfdbf006"
http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "8662ffdaedbee7b85d4aadbbe8005a65cceea128bb0d07aa892998e3683caea2",
    strip_prefix = "rules_nodejs-{}".format(rules_nodejs_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_nodejs/archive/{}.zip".format(rules_nodejs_version),
)
load("@build_bazel_rules_nodejs//:package.bzl", "rules_nodejs_dependencies")
rules_nodejs_dependencies()

load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories")
node_repositories(package_json = [])

rules_sass_version = "8b61ad6953fde55031658e1731c335220f881369" # update this as needed
http_archive(
    name = "io_bazel_rules_sass",
    sha256 = "afb08f0ae0060c1dbdd11d22578972d087e5463e647ce35dfc2b6c2a41682da8",
    strip_prefix = "rules_sass-{}".format(rules_sass_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_sass/archive/{}.zip".format(rules_sass_version),
)
load("@io_bazel_rules_sass//:package.bzl", "rules_sass_dependencies")
rules_sass_dependencies()

load("@io_bazel_rules_sass//sass:sass_repositories.bzl", "sass_repositories")
sass_repositories()

skydoc_version = "77e5399258f6d91417d23634fce97d73b40cf337" # update this as needed
http_archive(
    name = "io_bazel_skydoc",
    sha256 = "4e9bd9ef65af54dedd997b408fa26c2e70c30ee8e078bcc1b51a33cf7d7f9d7e",
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
    url = "https://github.com/bazelbuild/bazel/releases/download/0.19.0/bazel-0.19.0-dist.zip",
    sha256 = "ee6135c5c47306c8421d43ad83aabc4f219cb065376ee37797f2c8ba9a615315",
)
# Also for Skylint. Comes from
# https://github.com/cgrushko/proto_library/blob/master/WORKSPACE
protobuf_version = "0038ff49af882463c2af9049356eed7df45c3e8e"
http_archive(
    name = "com_google_protobuf",
    sha256 = "2c8f8614fb1be709d68abaab6b4791682aa7db2048012dd4642d3a50b4f67cb3",
    strip_prefix = "protobuf-{}".format(protobuf_version),
    type = "zip",
    url = "https://github.com/protocolbuffers/protobuf/archive/{}.zip".format(protobuf_version),
)

RULES_JVM_EXTERNAL_TAG = "2.0.1"
http_archive(
    name = "rules_jvm_external",
    sha256 = "55e8d3951647ae3dffde22b4f7f8dee11b3f70f3f89424713debd7076197eaca",
    strip_prefix = "rules_jvm_external-{}".format(RULES_JVM_EXTERNAL_TAG),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/{}.zip".format(RULES_JVM_EXTERNAL_TAG),
)

load("//:workspace.bzl", "play_routes_repositories")
play_routes_repositories()

load("//:test_workspace.bzl", "play_routes_test_repositories")
play_routes_test_repositories()
