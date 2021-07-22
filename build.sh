#!/bin/bash

set -e

VERSION=v3.9.1
REPO_PATH=repo
BUILD_PATH="${REPO_PATH}/_build"

git clone https://github.com/bringauto/nlohmann_json-package.git "${REPO_PATH}"

mkdir -p "${BUILD_PATH}"
pushd "${BUILD_PATH}"
	git checkout ${VERSION}
	cmake -DJSON_BuildTests=OFF \
		-DCMAKE_INSTALL_PREFIX=INSTALL \
		-DJSON_MultipleHeaders=ON \
		../
	make
	make install
	pushd INSTALL
		zip -r libnlohmann-json-dev_${VERSION}_any.zip ./*
	popd
popd

mv ${BUILD_PATH}/INSTALL/*.zip ./
