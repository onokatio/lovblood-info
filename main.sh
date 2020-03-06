#!/bin/zsh

cat export.html \
	| pup '.frame-main article section table json{}' > export.json

# 血圧（最高）
jq '.[0].children[2].children[2].children[2].text' ./export.json
jq '.[0].children[2].children[2].children[3].text' ./export.json
jq '.[0].children[2].children[2].children[4].text' ./export.json

rm export.json
