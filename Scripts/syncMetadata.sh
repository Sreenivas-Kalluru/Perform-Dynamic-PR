#/bin/bash

set -e

cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"
repo_url=https://github.com/Microsoft/vcpkg
(git ls-remote $repo_url | head -n1 | awk '{ print $1 }') > commit.txt

content=$(cat commit.txt)
echo "File created with recent Commit Id value: $content"
echo "commit txt file"
