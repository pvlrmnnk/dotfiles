#!/usr/bin/env zx

/// <reference types="zx/globals" />

const tools = {
    "gopls": "golang.org/x/tools/gopls@latest",
    "dlv": "github.com/go-delve/delve/cmd/dlv@latest",
    "golangci-lint": "github.com/golangci/golangci-lint/cmd/golangci-lint@latest",
    "gotests": "github.com/cweill/gotests/gotests@latest",
    "impl": "github.com/josharian/impl@latest",
    "gomodifytags": "github.com/fatih/gomodifytags@latest",
    "goplay": "github.com/haya14busa/goplay/cmd/goplay@latest"
}

for (const toolName in tools) {
    try {
        const packageName = tools[toolName];
        console.log('Install ' + chalk.bold(toolName) + ' as ' + packageName)
        await quiet($`go install ${packageName}`)
        console.log(chalk.bold(toolName) + ' is ' + which.sync(toolName))
    } catch (p) {
        console.log(chalk.bold.red('Error') + ' ' + p.stderr.trim())
    }
}
