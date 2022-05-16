go_version() {
    local cmd="${1}"

    ${cmd} version
}

go_env() {
    local cmd="${1}"

    local env_vars=(
        'GOVERSION'
        'GOROOT'
        'GOPATH'
        'GOMODCACHE'
    )

    for env_var in "${env_vars[@]}"; do
        echo "${env_var}=$(${cmd} env ${env_var})"
    done
}

go_install() {
    local cmd="${1}"
    local package="${2}"

    ${cmd} install ${package}
}
