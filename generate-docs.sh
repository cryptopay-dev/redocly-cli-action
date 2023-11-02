#!/bin/sh

cd /github/workspace || exit

echo "redoc-cli version: $(redocly --version)"

# shellcheck disable=SC2086
redocly $1
