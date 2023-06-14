#!/bin/bash

fetch_url=$(git remote show origin | awk '/Fetch URL/ {print $NF}')
expected_url="<expected_fetch_url>"



if [[ "$fetch_url" == "$expected_url" ]]; then
	echo "Test passed: Fetch URL is correct"
else
	echo "Test failed: Fetch URL is incorrect"
fi
