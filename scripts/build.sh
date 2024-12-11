#!/bin/bash
# SPDX-License-Identifier: GPL-3.0
# source scripts/aliases.sh
source scripts/environment.sh

# todo: build for macOS, Linux and Windows (amd64, arm64, riscv64)
swift build -c release --static-swift-stdlib --package-path pkg/client/cli

# fixme: copy build to bin/
cp -f pkg/client/cli/.build/release/hellocli bin/hellocli-$(uname -s | tr '[:upper:]' '[:lower:]')-$(uname -m)
