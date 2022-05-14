export GOPATH="${HOME}/.go"
export GOROOT="${HOME}/.gosdk/go1.17.10"
export PATH="${GOROOT}/bin:${PATH}"

install_go() {
    local version=$1

    if [ -z "$version" ]; then
        echo "No version specified"
        return 1
    fi

    local current_dir=$(pwd)
    local temp_dir=$(mktemp -d)
    local sdk_dir="${HOME}/.gosdk"
    local install_dir="${sdk_dir}/go${version}"
    local package_name="go${version}.darwin-amd64.tar.gz"
    local download_link="https://go.dev/dl/${package_name}"

    cd $(mktemp -d)

    echo "Downloading from ${download_link}"
    wget -q ${download_link}
    if [ $? -ne 0 ]; then
        echo "Unable to download package from ${download_link}"
        cd ${current_dir}
        return 1
    fi

    echo "Unpacking ${package_name}"
    tar -xf ${package_name}
    if [ $? -ne 0 ]; then
        echo "Unable to upack package ${package_name}"
        cd ${current_dir}
        return 1
    fi

    echo "Moving to ${install_dir}"
    mkdir -p ${install_dir}
    mv ./go/* ${install_dir}

    cd ${current_dir}
    rm -rf ${temp_dir}

    ${install_dir}/bin/go version
}
