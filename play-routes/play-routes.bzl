"""Play Routes rules

Bazel rules for running the
[Play routes file compiler](https://github.com/playframework/playframework/tree/master/framework/src/routes-compiler/src/main/scala/play/routes/compiler)
on Play routes files
"""
gendir_base_path = "play/routes"

play_imports = [
  "controllers.Assets.Asset",
]

def _sanitize_string_for_usage(s):
  res_array = []
  for c in s:
    if c.isalnum() or c == ".":
      res_array.append(c)
    else:
      res_array.append("_")
  return "".join(res_array)

def _format_import_args(imports):
  return ["--routesImport={}".format(i) for i in imports]

def _impl(ctx):
  gendir = ctx.actions.declare_directory(
    gendir_base_path + "/" + _sanitize_string_for_usage(ctx.attr.name)
  )
  paths = [f.path for f in ctx.files.srcs]
  args = [gendir.path] + [",".join(paths)]

  if ctx.attr.include_play_imports:
    args = args + _format_import_args(play_imports)

  args = args + _format_import_args(ctx.attr.routes_imports)

  if ctx.attr.generate_reverse_router:
    args = args + ["--generateReverseRouter"]

  if ctx.attr.namespace_reverse_router:
    args = args + ["--namespaceReverserRouter"]

  if ctx.attr.routes_generator:
    args = args + ["--routesGenerator={}".format(ctx.attr.routes_generator)]

  ctx.actions.run(
    inputs = ctx.files.srcs,
    outputs = [gendir],
    arguments = args,
    progress_message = "Compiling play routes",
    executable = ctx.executable._play_routes_compiler,
  )

  # TODO: something more portable
  ctx.actions.run_shell(
    inputs = [ctx.executable._zipper, gendir],
    outputs = [ctx.outputs.srcjar],
    arguments = [ctx.executable._zipper.path, gendir.path, gendir.short_path, ctx.outputs.srcjar.path],
    command = r"""$1 c $4 META-INF/= $(find -L $2 -type f | sed "s,$2/\(.*\),$3/\1=\0,")""",
    progress_message = "Bundling compiled play routes into srcjar",
  )

play_routes = rule(
  implementation = _impl,
  attrs = {
    "srcs": attr.label_list(allow_files = True, mandatory = True),
    "routes_imports": attr.string_list(),
    "routes_generator": attr.string(default = ""),
    "generate_reverse_router": attr.bool(default = False),
    "namespace_reverse_router": attr.bool(default = False),
    "include_play_imports": attr.bool(default = False),
    "_play_routes_compiler": attr.label(
      executable = True,
      cfg = "host",
      allow_files = True,
      default = Label("//play-routes-compiler"),
    ),
    "_zipper": attr.label(cfg = "host", default = "@bazel_tools//tools/zip:zipper", executable = True),
  },
  outputs = {
    "srcjar": "play_routes_%{name}.srcjar",
  }
)
"""Compiles Play routes files templates to Scala sources files.

Args:
  srcs: Play routes files
  routes_imports: Additional imports to import to the Play routes
  routes_generator: The full class of the routes generator, e.g., `play.routes.compiler.InjectedRoutesGenerator`
  include_play_imports: If true, include the imports the Play project includes by default.
  generate_reverse_router: Whether the reverse router should be generated. Setting to false may reduce compile times if it's not needed.
  namespace_reverse_router: Whether the reverse router should be namespaced. Useful if you have many routers that use the same actions.
"""