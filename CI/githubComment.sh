#!/bin/bash

set -x

DOCKER_ID=$1
COMMIT_ID=$2

CIOUTPUT=$(cat /tmp/tryapl-CI.log)
echo "{ \"body\": \"Build failed with output:\n\`\`\`$(docker logs ${DOCKER_ID}  2>&1| sed '/   \+$/d;:a;N;$!ba;s/\\/\\\\/g;s/\r//g;s/\n/\\n /g;s/"/\\"/g')\n\`\`\`\nCI Output:\n\`\`\`$(cat /tmp/tryapl-CI.log | sed '/   \+$/d;:a;N;$!ba;s/\\/\\\\/g;s/\r//g;s/\n/\\n /g;s/"/\\"/g')\n\`\`\`\"}" >json

curl -v --data "$(cat json)" -H "Authorization: token $GHTOKEN" -i https://api.github.com/repos/Dyalog/tryapl/commits/${COMMIT_ID}/comments

rm json
