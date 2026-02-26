load("@rules_scala_annex//rules:register_toolchain.bzl", "create_version_config_settings")
load(":play-routes-toolchain.bzl", "play_routes_toolchain")

def create_play_routes_toolchain(name, play_routes_compiler, scala_version, jvm_flags = [], prefix = ""):
    """Defines and configures a Play Routes toolchain selected by Scala version.

    Args:
        name: Name of the generated `toolchain` target. Register it with `register_toolchains`.
        play_routes_compiler: Label of the executable Play Routes compiler to use.
        scala_version: Scala version this toolchain serves, e.g. "3", "2.13". A `twirl_templates`
            target is matched to this toolchain when its `scala_version` attribute matches
            hierarchically. For example, "3" matches a target requesting "3.3.7".
        jvm_flags: JVM options passed to the Play routes compiler at JVM startup.
        prefix: Optional namespace to disambiguate multiple toolchains that share a
            `scala_version`. A target selects a prefixed toolchain by setting
            `scala_version = "<prefix>_<version>"`.
    """
    toolchain_name = "{}-toolchain".format(name)
    play_routes_toolchain(
        name = toolchain_name,
        play_routes_compiler = play_routes_compiler,
        jvm_flags = jvm_flags,
    )

    scala_version_settings_group_name = create_version_config_settings(name, scala_version, prefix)

    native.toolchain(
        name = name,
        toolchain = toolchain_name,
        toolchain_type = "@rules_play_routes//play-routes-toolchain:toolchain_type",
        target_settings = [":{}".format(scala_version_settings_group_name)],
    )
