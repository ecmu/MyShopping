#!/bin/env bash

#printenv

echo {"tag_name":"$remote_version","target_commitish":"main","name":"$remote_version","body":"New release of shopping list","draft":false,"prerelease":false,"generate_release_notes":false} >data.json
cat data.json

#curl -L -X POST -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28" \
# -H "Authorization: Bearer $GITHUB_TOKEN" https://api.github.com/repos/$GITHUB_REPOSITORY/releases \
# -d '{"tag_name":"v1.0.0","target_commitish":"main","name":"v1.0.0","body":"Description of the release","draft":false,"prerelease":false,"generate_release_notes":false}'
