#!/bin/env bash

#printenv

cat <<EOF > data.json
{
  "tag_name":"$remote_version",
  "target_commitish":"main",
  "name":"$remote_version",
  "body":"New release of shopping list",
  "draft":false,
  "prerelease":false,
  "generate_release_notes":false
}
EOF
#cat data.json

curl -L -X POST -header "Accept: application/vnd.github+json" --header "X-GitHub-Api-Version: 2022-11-28" --header "Authorization: Bearer $GITHUB_TOKEN" --data @data.json https://api.github.com/repos/$GITHUB_REPOSITORY/releases
