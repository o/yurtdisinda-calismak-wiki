#!/bin/bash

set -euo pipefail
# exit on non zero exit code, fail fast when variable not found, fail immediately when a command fails behind pipe

set -o xtrace
# ahem, debug mode

readonly current_sha_file='/tmp/yurtdisinda-calismak-current-sha'
readonly repository_url='https://github.com/o/yurtdisinda-calismak-wiki.git'
readonly repository_commits_url='https://api.github.com/repos/o/yurtdisinda-calismak-wiki/commits'
readonly web_folder='/var/www/html'
readonly build_folder='/tmp/build/'
readonly source_folder='/tmp/source/'

touch "${current_sha_file}"
mkdir -p "${build_folder}"
mkdir -p "${source_folder}"

readonly latest_sha="$(curl ${repository_commits_url} | jq --raw-output '.[0].sha')"
readonly current_sha="$(cat ${current_sha_file})"

if [ "${latest_sha}" = "${current_sha}" ]
then
    echo 'Already up-to-date'
else
    echo 'Updating to new version'
    destination_folder="${build_folder}${latest_sha}"
    content_folder="${source_folder}${latest_sha}"
    mkdir -p "${destination_folder}"
    mkdir -p "${content_folder}"

    git clone "${repository_url}" "${content_folder}"
    jekyll build --source "${content_folder}" --destination="${destination_folder}"
    ln -nsf "${destination_folder}" "${web_folder}"
    echo "${latest_sha}" > "${current_sha_file}"
fi

echo 'Done'
