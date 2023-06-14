#!/bin/bash

fetch_url="<some_fetch_url>"
expected_url="<expected_rewritten_url>"

# Apply the URL replacements
url="${fetch_url/git@/https://}"
url="${url/ssh.dev.azure.com/dev.azure.com}"
url="${url/:v3/}"
repo_name=$(git rev-parse --show-toplevel | xargs basename)
url="${url/${repo_name}/_git/${repo_name}}"

if [[ "$url" == "$expected_url" ]]; then
	echo "Test passed: URL replacements are applied correctly"
else
	echo "Test failed: URL replacements are incorrect"
fi
