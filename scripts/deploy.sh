#!/bin/sh

set -eu

./scripts/clean.sh
./scripts/install.sh
./scripts/build.sh

mkdir public
cp -r priv public/
cp index.html public/

