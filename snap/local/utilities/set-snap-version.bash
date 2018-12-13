#!/usr/bin/env bash
# Program to set snap's version, used by the `version-script` keyword
# 林博仁(Buo-ren, Lin) <Buo.Ren.Lin@gmail.com> © 2018

set \
	-o errexit \
	-o errtrace \
	-o nounset \
	-o pipefail

init(){
	local \
		upstream_version

	upstream_version="$(
		git \
			describe \
			--always \
			--dirty=-d \
			--tags \
		| sed s/^v//
	)"

	printf \
		-- \
		'%s' \
		"${upstream_version}"

	exit 0
}

init "${@}"
