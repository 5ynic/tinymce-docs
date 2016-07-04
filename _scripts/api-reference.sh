#!/bin/bash

set -e

API_VERSION="$(cat .api-version)"
TARBALL_URL="https://codeload.github.com/tinymce/tinymce/tar.gz/$API_VERSION"
API_TMPDIR="/tmp/tinymce-$API_VERSION"

echo -e "\n > importing data files for tinymce api reference: $API_VERSION\n"

mkdir "$API_TMPDIR"
curl -s "$TARBALL_URL" | tar xzf - -C "$API_TMPDIR" --strip-components 1
moxiedoc "$API_TMPDIR/js/tinymce/classes" -t tinymcenext -o "$API_TMPDIR/tinymce-api-reference.zip"
unzip "$API_TMPDIR/tinymce-api-reference.zip"

echo ""
