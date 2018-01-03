load("@io_bazel_rules_scala//scala:scala.bzl", "scala_binary")
load("//play-routes:play-routes.bzl", "play_routes")

play_routes(
  name = "routes-test",
  visibility = ["//visibility:public"],
  srcs = ["conf/routes"] + glob(["conf/*.routes"]),
  include_play_imports = True,
  generate_reverse_router = True,
)

scala_binary(
  name = "routes-compiler",
  srcs = glob(["src/main/**/*.scala"]),
  data = ["conf/routes"] + glob(["conf/*.routes"]),
  visibility = ["//visibility:public"],
  main_class = "com.lucid.play.routes.LucidPlayRoutesCompiler",
  deps = [
    "@com_typesafe_play_routes_compiler_2_11//jar",
    "@scala//:scala-library",
    "@scala//:scala-parser-combinators",
    "@scala//:scala-compiler",
    "@scala//:scala-reflect",
    "@scala//:scala-xml",
    "@com_github_scopt_scopt_2_11//jar",
    "@commons_io_commons_io//jar",
    "@com_typesafe_play_twirl_api_2_11//jar",
  ],
)
