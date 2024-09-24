load("@bazel_skylib//rules:common_settings.bzl", "string_setting")

def _play_routes_toolchain_impl(ctx):
    toolchain_info = platform_common.ToolchainInfo(
        play_routes_compiler = ctx.attr.play_routes_compiler,
    )
    return [toolchain_info]

play_routes_toolchain = rule(
    implementation = _play_routes_toolchain_impl,
    attrs = {
        "play_routes_compiler": attr.label(
            mandatory = True,
            cfg = "exec",
            executable = True,
            doc = "Tool used to compile Play routes",
        ),
    },
    doc = "Defines a toolchain for compiling Play routes based on a Play routes compiler",
    provides = [platform_common.ToolchainInfo],
)
