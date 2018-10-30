"""
Load test 3rd party maven dependencies
"""

load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")
load("//3rdparty:test_maven.bzl", "list_dependencies")

def play_routes_test_repositories():
    for dep in list_dependencies():
        if "exports" in dep["import_args"]:
            dep["import_args"]["deps"] = dep["import_args"]["exports"]
            dep["import_args"].pop("exports")
        java_import_external(**dep["import_args"])
