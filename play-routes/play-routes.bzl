gendir_path = "play/routes"

play_imports = [
  "controllers.Assets.Asset",
]

def format_import_args(imports):
  return ["--routesImport={}".format(i) for i in imports]

def _impl(ctx):
  gendir = ctx.actions.declare_directory(gendir_path)
  paths = [f.path for f in ctx.files.srcs]
  args = [gendir.path] + [",".join(paths)]

  if ctx.attr.include_play_imports:
    args = args + format_import_args(play_imports)

  args = args + format_import_args(ctx.attr.routes_imports)

  if ctx.attr.generate_reverse_router:
    args = args + ["--generateReverseRouter"]

  if ctx.attr.generate_namespace_router:
    args = args + ["--generateNamespaceRouter"]

  if ctx.attr.routes_generator:
    args = args + ["--routesGenerator={}".format(ctx.attr.routes_generator)]

  ctx.actions.run(
    inputs = ctx.files.srcs,
    outputs = [gendir],
    arguments = args,
    progress_message = "Compiling play routes",
    executable = ctx.executable._play_routes_compiler,
  )

  ctx.actions.run(
    inputs = [gendir],
    outputs = [ctx.outputs.srcjar],
    arguments = ["cfM"] + [ctx.outputs.srcjar.path] + [gendir.path],
    progress_message = "Bundling compiled play routes into srcjar",
    executable = "jar",
  )

play_routes = rule(
  implementation = _impl,
  attrs = {
    "srcs": attr.label_list(allow_files = True, mandatory = True),
    "routes_imports": attr.string_list(),
    "routes_generator": attr.string(default = ""),
    "generate_reverse_router": attr.bool(default = False),
    "generate_namespace_router": attr.bool(default = False),
    "include_play_imports": attr.bool(default = False),
    "_play_routes_compiler": attr.label(
      executable = True,
      cfg = "host",
      allow_files = True,
      default = Label("//routes-compiler"),
    )
  },
  outputs = {
    "srcjar": "play_routes_%{name}.srcjar",
  }
)