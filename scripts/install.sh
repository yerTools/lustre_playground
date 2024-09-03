#!/bin/sh

set -eu

npm install

gleam deps download

# Ensure you update the CI Gleam version to match this
VERSION="v1.4.1"

rm -fr priv/compiler
mkdir -p priv/compiler
cd priv/compiler
curl -L "https://github.com/gleam-lang/gleam/releases/download/$VERSION/gleam-$VERSION-browser.tar.gz" | tar xz
cd ..

