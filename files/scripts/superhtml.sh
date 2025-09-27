#!/usr/bin/env bash

set -euo pipefail

mkdir -p /tmp
curl -L https://github.com/kristoff-it/superhtml/releases/latest/download/x86_64-linux-musl.tar.xz | tar -xvfJ - -C /tmp/
mv /tmp/x86_64-linux-musl/superhtml /usr/bin/superhtml
