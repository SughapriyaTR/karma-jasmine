#!/usr/bin/env bash
set -xve
PKG_FILE="$PWD/$(npm pack)"
git clone https://github.com/karma-runner/integration-tests.git --depth 1
cd integration-tests
./run.sh -g "jasmine" $PKG_FILE
