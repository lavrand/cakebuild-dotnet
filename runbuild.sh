#!/bin/bash

export PATH=$PATH:/root/.dotnet 

[[ -z "${SOURCE_PATH}" ]] && sourcePath='/source' || sourcePath="${SOURCE_PATH}"
[[ -z "${BUILD_SCRIPT}" ]] && script='./build.sh' || script="${BUILD_SCRIPT}"
[[ -z "${BUILD_TARGET}" ]] && target='Build' || target="${BUILD_TARGET}"

cd ${sourcePath}
if [ -n "${GIT_BRANCH}" ]; then
    git checkout -b ${GIT_BRANCH} --track ${GIT_BRANCH}
fi
chmod +x $script
./$script -target=$target