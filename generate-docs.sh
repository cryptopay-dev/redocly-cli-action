#!/bin/sh

cd /github/workspace || exit

echo "redoc-cli version: $(redoc-cli --version)"

# shellcheck disable=SC2086
redoc-cli $1
