#!/usr/bin/env bash

set -euo pipefail

mkdir -p /usr/lib/netcoredbg
curl -L https://github.com/Samsung/netcoredbg/releases/latest/download/netcoredbg-linux-amd64.tar.gz | tar -zxvf - -C /usr/lib/netcoredbg
ln -s /usr/lib/netcoredbg/netcoredbg /usr/bin/netcoredbg
