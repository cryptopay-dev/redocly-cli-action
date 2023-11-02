#!/bin/sh

cd /github/workspace || exit

echo "redoc-cli version: $(redoc-cli --version)"

redoc-cli "$1"
