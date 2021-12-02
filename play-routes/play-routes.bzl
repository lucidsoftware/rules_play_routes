"""Play Routes rules

Bazel rules for running the
[Play routes file compiler](https://github.com/playframework/playframework/tree/master/framework/src/routes-compiler/src/main/scala/play/routes/compiler)
on Play routes files
"""
gendir_base_path = "play/routes"

play_imports = [
  "controllers.Assets.Asset",
]

PlayRoutesInfo = provider(fields = {"srcjar": "The source jar created by this target."})

def _sanitize_string_for_usage(s):
  res_array = []
  for i in range(len(s)):
    c = s[i]
    if c.isalnum() or c == ".":
      res_array.append(c)
    else:
      res_array.append("_")
  return "".join(res_array)

def _format_import_args(imports):
  return ["--routesImport={}".format(i) for i in imports]

def _impl(ctx):
  prefix = ctx.label.package + "/" + gendir_base_path + "/" + _sanitize_string_for_usage(ctx.attr.name)
  paths = [f.path for f in ctx.files.srcs]
  args = ["REPLACE_ME_OUTPUT_PATH"] + [",".join(paths)]

  if ctx.attr.include_play_imports:
    args = args + _format_import_args(play_imports)

  args = args + _format_import_args(ctx.attr.routes_imports)

  if ctx.attr.generate_reverse_router:
    args = args + ["--generateReverseRouter"]

  if ctx.attr.namespace_reverse_router:
    args = args + ["--namespaceReverserRouter"]

  if ctx.attr.routes_generator:
    args = args + ["--routesGenerator={}".format(ctx.attr.routes_generator)]

  if ctx.attr.generate_forwards_router == False:
    args = args + ["--generateForwardsRouter={}".format(ctx.attr.generate_forwards_router)]

  ctx.actions.run(
    inputs = ctx.files.srcs,
    outputs = [ctx.outputs.srcjar],
    arguments = [
        prefix,
        ctx.outputs.srcjar.path,
        ctx.executable._zipper.path,
        ctx.executable.play_routes_compiler.path,
    ] + args,
    progress_message = "Compiling play routes",
    use_default_shell_env = True,
    executable = ctx.executable._play_route_helper,
    tools = [ctx.executable.play_routes_compiler, ctx.executable._zipper]
  )

  return [
    PlayRoutesInfo(
      srcjar = ctx.outputs.srcjar,
    )
  ]

play_routes = rule(
  implementation = _impl,
  doc = "Compiles Play routes files templates to Scala sources files.",
  attrs = {
    "srcs": attr.label_list(
      doc = "Play routes files",
      allow_files = True,
      mandatory = True
    ),
    "routes_imports": attr.string_list(
      doc = "Additional imports to import to the Play routes",
    ),
    "routes_generator": attr.string(
      doc = "The full class of the routes generator, e.g., `play.routes.compiler.InjectedRoutesGenerator`",
      default = ""
    ),
    "generate_reverse_router": attr.bool(
      doc = "Whether the reverse router should be generated. Setting to false may reduce compile times if it's not needed.",
      default = False
    ),
    "namespace_reverse_router": attr.bool(
      doc = "Whether the reverse router should be namespaced. Useful if you have many routers that use the same actions.",
      default = False
    ),
    "generate_forwards_router": attr.bool(
        doc = "Whether the forward router should be generated. Setting to false may help generate only the reverse routes",
        default = True
    ),
    "include_play_imports": attr.bool(
      doc = "If true, include the imports the Play project includes by default.",
      default = False
    ),
    "play_routes_compiler": attr.label(
      executable = True,
      cfg = "host",
      allow_files = True,
      default = Label("//external:default-play-routes-compiler-cli"),
    ),
    "_play_route_helper": attr.label(
      executable = True,
      cfg = "host",
      default = Label("@io_bazel_rules_play_routes//play-routes:play-routes-helper"),
    ),
    "_zipper": attr.label(cfg = "host", default = "@bazel_tools//tools/zip:zipper", executable = True),
  },
  outputs = {
    "srcjar": "play_routes_%{name}.srcjar",
  }
)
