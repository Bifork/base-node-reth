SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

mkdir -p ${SCRIPT_DIR}/jwt
if [[ ! -f ${SCRIPT_DIR}/jwt/jwt.hex ]]; then
    openssl rand -hex 32 | tr -d "\n" | tee >./jwt/jwt.hex
else
    echo "./jwt/jwt.hex already exists!"
fi
