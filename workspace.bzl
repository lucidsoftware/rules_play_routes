"""
Load 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

def play_routes_repositories(play_version):
    """
    Loads 3rd party dependencies and the required play routes compiler CLIs for the specified version of Play

    Args:
      play_version: (str) Must be either "2.5", "2.6", or "2.7"
    """

    play_version = play_version.replace(".", "_")

    play_artifacts = {
        "2_5": [
            "com.lucidchart:play-routes-compiler-cli_2.11:2.5.19",
        ],
        "2_6": [
            "com.lucidchart:play-routes-compiler-cli_2.11:2.6.23",
            "com.lucidchart:play-routes-compiler-cli_2.12:2.6.23",
        ],
        "2_7": [
            "com.lucidchart:play-routes-compiler-cli_2.11:2.7.2",
            "com.lucidchart:play-routes-compiler-cli_2.12:2.7.3",
        ]
    }

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
        artifacts = play_artifacts[play_version] + common_artifacts,
        repositories = [
            "http://central.maven.org/maven2",
        ],
        fetch_sources = True,
        maven_install_json = "@io_bazel_rules_play_routes//:play_{}_routes_compiler_cli_install.json".format(play_version)
    )

    for version in play_artifacts.keys():
      maven_install(
          name = "play_{}_routes_compiler_cli".format(version),
          artifacts = play_artifacts[version] + common_artifacts,
          repositories = [
              "http://central.maven.org/maven2",
          ],
          fetch_sources = True,
          maven_install_json = "@io_bazel_rules_play_routes//:play_{}_routes_compiler_cli_install.json".format(version),
      )
