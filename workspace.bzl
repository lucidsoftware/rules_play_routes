"""
Load 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

def play_routes_repositories(play_version):

    play_2_5_artifacts = [
        "com.lucidchart:play-routes-compiler-cli_2.11:2.5.19",
    ]

    play_2_6_artifacts = [
        "com.lucidchart:play-routes-compiler-cli_2.11:2.6.23",
        "com.lucidchart:play-routes-compiler-cli_2.12:2.6.23",
    ]

    play_2_7_artifacts = [
        "com.lucidchart:play-routes-compiler-cli_2.11:2.7.2",
        "com.lucidchart:play-routes-compiler-cli_2.12:2.7.3",
    ]

    if play_version == "2.5":
        play_artifacts = play_2_5_artifacts
        maven_install_json = "@io_bazel_rules_play_routes//:play_2_5_routes_compiler_cli_install.json"
    elif play_version == "2.6":
        play_artifacts = play_2_6_artifacts
        maven_install_json = "@io_bazel_rules_play_routes//:play_2_6_routes_compiler_cli_install.json"
    elif play_version == "2.7":
        play_artifacts = play_2_7_artifacts
        maven_install_json = "@io_bazel_rules_play_routes//:play_2_7_routes_compiler_cli_install.json"

    common_artifacts = [
        "com.github.scopt:scopt_2.11:3.7.0",
        "com.lucidchart:play-routes-compiler-cli:0.1",
        "com.typesafe.play:routes-compiler_2.11:2.5.19",
        "org.scala-sbt:zinc_2.11:1.2.1",
        "org.scala-sbt:compiler-interface:1.2.1",
        "org.scala-sbt:util-interface:1.2.0",
        "org.scala-lang:scala-compiler:2.11.12",
        "org.scala-lang:scala-library:2.11.12",
        "org.scala-lang:scala-reflect:2.11.12",
    ]

    maven_install(
        name = "play_routes",
        artifacts = play_artifacts + common_artifacts,
        repositories = [
            "http://central.maven.org/maven2",
        ],
        fetch_sources = True,
        maven_install_json = maven_install_json,
    )

    maven_install(
        name = "play_2_5_routes_compiler_cli",
        artifacts = play_2_5_artifacts + common_artifacts,
        repositories = [
            "http://central.maven.org/maven2",
        ],
        fetch_sources = True,
        maven_install_json = "@io_bazel_rules_play_routes//:play_2_5_routes_compiler_cli_install.json",
    )

    maven_install(
        name = "play_2_6_routes_compiler_cli",
        artifacts = play_2_6_artifacts + common_artifacts,
        repositories = [
            "http://central.maven.org/maven2",
        ],
        fetch_sources = True,
        maven_install_json = "@io_bazel_rules_play_routes//:play_2_6_routes_compiler_cli_install.json",
    )

    maven_install(
        name = "play_2_7_routes_compiler_cli",
        artifacts = play_2_7_artifacts + common_artifacts,
        repositories = [
            "http://central.maven.org/maven2",
        ],
        fetch_sources = True,
        maven_install_json = "@io_bazel_rules_play_routes//:play_2_7_routes_compiler_cli_install.json",
    )
