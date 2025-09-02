
## Open programs

- https://github.com/kristoff-it/superhtml
- https://github.com/OmniSharp/omnisharp-roslyn
- https://github.com/Samsung/netcoredbg/

## Kate debugger config
```json
{
    "dap": {
        "lldb": {
            "url": "https://github.com/llvm/llvm-project/tree/main/lldb/tools/lldb-dap",
            "run": {
                "command": ["lldb-dap", "-p", "${#run.port}"],
                "port": 0,
                "redirectStderr": true,
                "redirectStdout": true,
                "supportsSourceRequest": false
            },
            "configurations": {
                "launch (debug)": {
                    "request": {
                        "command": "launch",
                        "mode": "debug",
                        "program": "${file}",
                        "args": "${args|list}",
                        "cwd": "${workdir}",
                        "stopOnEntry": false
                    }
                }
            }
        },
        "netcoredbg": {
            "url": "https://github.com/Samsung/netcoredbg",
            "run": {
                "command": ["netcoredbg", "--run", "--server=${#run.port}", "--interpreter=vscode", "--", "dotnet", "${file}" ],
                "port": 0,
                "redirectStderr": true,
                "redirectStdout": true,
                "supportsSourceRequest": false
            },
            "configurations": {
                "launch (debug)": {
                    "request": {
                        "command": "launch",
                        "mode": "debug",
                        "program": "${file}",
                        "args": "${args|list}",
                        "cwd": "${workdir}",
                        "stopOnEntry": true
                    }
                }
            }
        }
    }
}
```

## Kate lsp config ???
```json
{
    "servers": {
        "html": {
            "command": [
                "superhtml",
                "lsp"
            ],
            "url": "https://github.com/kristoff-it/superhtml",
            "highlightingModeRegex": "^HTML$"
        },
    }
}
```
