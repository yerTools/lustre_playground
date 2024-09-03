#!/bin/sh

set -eu

gleam run -m lustre/dev build --detect-tailwind=true --outdir=priv/static
