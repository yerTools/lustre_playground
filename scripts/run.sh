#!/bin/sh

set -eu

npm install
gleam deps download
gleam run -m lustre/dev start --detect-tailwind=true --port=8161
