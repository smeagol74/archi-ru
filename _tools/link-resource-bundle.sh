#!/usr/bin/env bash

SCRIPT=$(readlink -f $0)
DIR=$(dirname $SCRIPT)

function pushd () {
    command pushd "$@" > /dev/null
}

function popd () {
    command popd "$@" > /dev/null
}


function link-props() {
    dir=$(basename $1 .en)
    pushd "${dir}.en"
    echo -n "${dir} → "
    for file in $(find . -iname '*_en.properties'); do
      echo -n "."
#      echo "file → ${file}"
      src=$(readlink -f "${file}")
#      echo "src → ${src}"
      dst="$(readlink -f ../${dir}.ru)/${file:2}"
#      echo "dst → ${dst}"
      dstdir=$(dirname ${dst})
#      echo "dstdir → ${dstdir}"
      mkdir -p "${dstdir}"
      ln -sf "${src}" "${dst}"
    done
    echo " "
    popd
}

pushd "${DIR}/.."

for dir in *.en; do
  link-props ${dir}
done

popd