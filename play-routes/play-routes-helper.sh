#!/usr/bin/env bash

set -e

OUTPUT_DIR=$(mktemp -d)

PREFIX=$1
shift
OUTPUT_SRCJAR=$1
shift
ZIPPER_PATH=$1
shift


# substitute output path and execute the compiler command
${*/REPLACE_ME_OUTPUT_PATH/$OUTPUT_DIR}

# produce resulting source jar
$ZIPPER_PATH c $OUTPUT_SRCJAR META-INF/= $(find -L $OUTPUT_DIR -type f | while read v; do echo "$PREFIX"${v#"$OUTPUT_DIR"}=$v; done)
