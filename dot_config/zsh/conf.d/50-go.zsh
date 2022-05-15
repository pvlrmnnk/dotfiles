export GOPATH="${HOME}/.go"
export GOROOT="${HOME}/.gosdk/go1.17.10"
export PATH="${GOROOT}/bin:${PATH}"

install_go() {
    local version=$1

    if [ -z "$version" ]; then
        echo "No version specified"
        return 1
    fi

    local temp_dir=$(mktemp -d)
    local sdk_dir="${HOME}/.gosdk"
    local install_dir="${sdk_dir}/go${version}"

    local archive_name="go${version}.darwin-amd64.tar.gz"
    local archive_url="https://go.dev/dl/${archive_name}"
    local archive_path="${temp_dir}/${archive_name}"

    echo "Downloading ${archive_url} to ${archive_path}"
    curl --fail -s -L -o $archive_path $archive_url
    if [ $? -ne 0 ]; then
        echo "Unable to download ${archive_url}"
        rm -rf $temp_dir
        return 1
    fi

    echo "Unarchiving ${archive_path} to ${install_dir}"
    rm -rf $install_dir
    mkdir -p $install_dir
    tar -xf $archive_path -C $install_dir --strip-components=1
    if [ $? -ne 0 ]; then
        echo "Unable to unarchive ${archive_path}"
        rm -rf $temp_dir
        return 1
    fi

    rm -rf $temp_dir

    local go="${install_dir}/bin/go"

    echo "\n"
    echo "🎉 $($go version)"
    echo "\n"
    echo "export GOROOT=\"${install_dir}\""
    echo "export PATH=\"\${GOROOT}/bin:\${PATH}\""
}
