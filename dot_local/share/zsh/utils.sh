ColorNormal='\033[0m'
ColorBold='\033[1m'

ColorBoldWhite='\033[1;97m'
ColorBoldBlue='\033[1;34m'

log_step() {
    local step="${1}"

    echo -e "${ColorBoldBlue}==>${ColorNormal} ${ColorBoldWhite}${step}${ColorNormal}"
}

log_sub_step() {
    local sub_step="${1}"

    echo -e "${ColorBold}-->${ColorNormal} ${sub_step}"
}

log_var() {
    local name="${1}"
    local value="${2}"

    echo -e "${name}=\"${value}\""
}

check_cmd() {
    local cmd="${1}"

    command -V "${cmd}"
}
