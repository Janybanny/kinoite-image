#!/usr/bin/env bash

set -euo pipefail

mkdir -p /usr/lib/omnisharp
curl -L https://github.com/OmniSharp/omnisharp-roslyn/releases/latest/download/omnisharp-linux-x64-net6.0.tar.gz | tar -zxvf - -C /usr/lib/omnisharp
ln -s -t /usr/bin /usr/lib/omnisharp/OmniSharp OmniSharp
