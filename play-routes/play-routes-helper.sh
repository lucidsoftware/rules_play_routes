#!/usr/bin/env bash

set -e

mkdir output

OUTPUT_DIR=output

PREFIX=$1
OUTPUT_SRCJAR=$2
ZIPPER_PATH=$3
shift 3


# substitute output path and execute the compiler command
${*/REPLACE_ME_OUTPUT_PATH/$OUTPUT_DIR}

# produce resulting source jar
$ZIPPER_PATH c $OUTPUT_SRCJAR META-INF/= $(find -L $OUTPUT_DIR -type f | while read v; do echo "$PREFIX"${v#"$OUTPUT_DIR"}=$v; done)
