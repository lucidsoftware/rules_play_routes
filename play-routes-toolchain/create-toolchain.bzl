load(":play-routes-toolchain.bzl", "play_routes_toolchain")

def create_play_routes_toolchain(name, play_routes_compiler):
    play_routes_toolchain_name = "{}-toolchain".format(name)
    config_setting_name = "{}-toolchain-setting".format(name)

    play_routes_toolchain(
        name = play_routes_toolchain_name,
        play_routes_compiler = play_routes_compiler,
    )

    native.config_setting(
        name = config_setting_name,
        flag_values = {
            "@rules_play_routes_toolchain//:play-routes-toolchain": name,
        },
    )

    native.toolchain(
        name = name,
        toolchain = play_routes_toolchain_name,
        toolchain_type = ":toolchain_type",
        target_settings = [config_setting_name],
    )
