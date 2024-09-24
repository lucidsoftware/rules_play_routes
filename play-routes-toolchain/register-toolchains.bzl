def _toolchain_configuration_repository_impl(repository_ctx):
    repository_ctx.file(
        "BUILD.bazel",
        """\
load("@bazel_skylib//rules:common_settings.bzl", "string_setting")

string_setting(
    name = "play-routes-toolchain",
    build_setting_default = "{}",
    visibility = ["//visibility:public"],
)

string_setting(
    name = "original-play-routes-toolchain",
    build_setting_default = "",
    visibility = ["//visibility:public"],
)
""".format(repository_ctx.attr.default_toolchain_name),
    )

_toolchain_configuration_repository = repository_rule(
    attrs = {
        "default_toolchain_name": attr.string(mandatory = True),
    },
    doc = "Defines build settings used by the Play Routes toolchains to use. This is done in a separate repository so we can provide the default dynamically.",
    implementation = _toolchain_configuration_repository_impl,
)

def play_routes_register_toolchains(
        default_toolchain_name,
        toolchains = [
            "//play-routes-toolchain:play-routes-3",
            "//play-routes-toolchain:play-routes-2-13",
        ]):
    _toolchain_configuration_repository(
        name = "rules_play_routes_toolchain",
        default_toolchain_name = default_toolchain_name,
    )

    native.register_toolchains(*toolchains)
