"""Play Routes rules

Bazel rules for running the
[Play routes file compiler](https://github.com/playframework/playframework/tree/master/framework/src/routes-compiler/src/main/scala/play/routes/compiler)
on Play routes files
"""

load(
    "@rules_scala_annex//rules:register_toolchain.bzl",
    _scala_incoming_transition = "scala_incoming_transition",
    _scala_outgoing_transition = "scala_outgoing_transition",
)

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

def _format_import_arg(import_arg):
    return "--routesImport={}".format(import_arg)

def _impl(ctx):
    play_routes_toolchain = ctx.toolchains["//play-routes-toolchain:toolchain_type"]
    output_dir = ctx.actions.declare_directory("play_routes_{}".format(_sanitize_string_for_usage(ctx.attr.name)))
    args = ctx.actions.args()
    args.add_all([output_dir], expand_directories = False)
    args.add(ctx.outputs.srcjar)
    args.add_joined(ctx.files.srcs, join_with = ",")

    if ctx.attr.include_play_imports:
        args.add_all(play_imports, map_each = _format_import_arg)

    args.add_all(ctx.attr.routes_imports, map_each = _format_import_arg)

    if ctx.attr.generate_reverse_router:
        args.add("--generateReverseRouter")

    if ctx.attr.namespace_reverse_router:
        args.add("--namespaceReverserRouter")

    if ctx.attr.routes_generator:
        args.add(ctx.attr.routes_generator, format = "--routesGenerator=%s")

    if ctx.attr.generate_forwards_router == False:
        args.add(ctx.attr.generate_forwards_router, format = "--generateForwardsRouter=%s")

    args.set_param_file_format("multiline")
    args.use_param_file("@%s", use_always = True)

    # These args are read by the worker launcher script rather than the param file, which is why
    # they're kept in a separate args object from the param-file args.
    jvm_flag_args = ctx.actions.args()
    jvm_flag_args.add_all(
        play_routes_toolchain.jvm_flags,
        format_each = "--jvm_flag=%s",
    )

    ctx.actions.run(
        arguments = [jvm_flag_args, args],
        executable = play_routes_toolchain.play_routes_compiler.files_to_run,
        execution_requirements = {
            "supports-workers": "1",
            "supports-multiplex-workers": "1",
            "supports-multiplex-sandboxing": "1",
            "supports-worker-cancellation": "1",
            "supports-path-mapping": "1",
        },
        inputs = ctx.files.srcs,
        mnemonic = "PlayRoutesCompile",
        outputs = [output_dir, ctx.outputs.srcjar],
        progress_message = "Compiling play routes %{label}",
        use_default_shell_env = True,
        toolchain = "//play-routes-toolchain:toolchain_type",
    )

    return [
        PlayRoutesInfo(
            srcjar = ctx.outputs.srcjar,
        ),
    ]

# If you add any labels or label_lists, you will need to add the Scala outgoing transition to it.
# Otherwise you'll end up needlessly changing build config and causing an explosion in size for the
# build graph.
play_routes = rule(
    implementation = _impl,
    doc = "Compiles Play routes files templates to Scala sources files.",
    cfg = _scala_incoming_transition,
    attrs = {
        "srcs": attr.label_list(
            doc = "Play routes files",
            allow_files = True,
            mandatory = True,
            cfg = _scala_outgoing_transition,
        ),
        "routes_imports": attr.string_list(
            doc = "Additional imports to import to the Play routes",
        ),
        "routes_generator": attr.string(
            doc = "The full class of the routes generator, e.g., `play.routes.compiler.InjectedRoutesGenerator`",
            default = "",
        ),
        "generate_reverse_router": attr.bool(
            doc = "Whether the reverse router should be generated. Setting to false may reduce compile times if it's not needed.",
            default = False,
        ),
        "namespace_reverse_router": attr.bool(
            doc = "Whether the reverse router should be namespaced. Useful if you have many routers that use the same actions.",
            default = False,
        ),
        "generate_forwards_router": attr.bool(
            doc = "Whether the forward router should be generated. Setting to false may help generate only the reverse routes",
            default = True,
        ),
        "include_play_imports": attr.bool(
            doc = "If true, include the imports the Play project includes by default.",
            default = False,
        ),
        "scala_version": attr.string(
            doc = "The Scala version to use for this target, e.g., '3', '2.13'.",
        ),
    },
    outputs = {
        "srcjar": "play_routes_%{name}.srcjar",
    },
    toolchains = ["//play-routes-toolchain:toolchain_type"],
)
