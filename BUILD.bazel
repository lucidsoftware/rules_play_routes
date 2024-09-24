load("@com_github_bazelbuild_buildtools//buildifier:def.bzl", "buildifier")
load(
    "@rules_java//toolchains:default_java_toolchain.bzl",
    "DEFAULT_JAVACOPTS",
    "DEFAULT_TOOLCHAIN_CONFIGURATION",
    "default_java_toolchain",
)

default_java_toolchain(
    name = "repository_default_toolchain_21",
    configuration = DEFAULT_TOOLCHAIN_CONFIGURATION,
    java_runtime = "@rules_java//toolchains:remotejdk_21",
    javac_supports_worker_multiplex_sandboxing = True,
    # some of the default options make scala compilation fail in the test package
    misc = [opt for opt in DEFAULT_JAVACOPTS if not opt.startswith("-Xep")],
    source_version = "21",
    target_version = "21",
)

buildifier(
    name = "buildifier",
)

buildifier(
    name = "buildifier_check",
    mode = "check",
)
