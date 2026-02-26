load("@bazel_skylib//lib:unittest.bzl", "analysistest", "asserts")
load("//play-routes:play-routes.bzl", "play_routes")

# This flag is set on the test-only "play-routes-jvm-flags" toolchain in test/BUILD.bazel. The test
# asserts it propagates to the PlayRoutesCompile action's command line as `--jvm_flag=<flag>`. The
# jvm_flags are intentionally kept out of the params file, so they appear inline in argv.
_EXPECTED_JVM_FLAG = "--jvm_flag=-Drules_play_routes.test=1"

def _jvm_flags_propagated_test_impl(ctx):
    env = analysistest.begin(ctx)

    play_routes_actions = [
        action
        for action in analysistest.target_actions(env)
        if action.mnemonic == "PlayRoutesCompile"
    ]
    asserts.true(
        env,
        len(play_routes_actions) > 0,
        "expected at least one PlayRoutesCompile action",
    )
    for action in play_routes_actions:
        asserts.true(
            env,
            _EXPECTED_JVM_FLAG in action.argv,
            "expected {} in the PlayRoutesCompile command line, got: {}".format(
                _EXPECTED_JVM_FLAG,
                action.argv,
            ),
        )

    return analysistest.end(env)

jvm_flags_propagated_test = analysistest.make(
    _jvm_flags_propagated_test_impl,
    config_settings = {
        "//command_line_option:extra_toolchains": ["//test:play-routes-jvm-flags"],
    },
)

def play_routes_jvm_flags_test_suite(name):
    """Verifies that a Play routes toolchain's jvm_flags reach the PlayRoutesCompile action.

    Args:
        name: Name of the generated analysis test target.
    """
    play_routes(
        name = "play-routes-jvm-flags-target",
        srcs = ["conf/basic1.routes"],
        include_play_imports = True,
        scala_version = "jvmflagtest_3",
        tags = ["manual"],
    )

    jvm_flags_propagated_test(
        name = name,
        target_under_test = ":play-routes-jvm-flags-target",
    )
