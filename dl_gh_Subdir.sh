#!/bin/bash

echo "Enter the owner of repo"
read owner

echo "Enter the repo name"
read repo

echo "Enter the subdirectory path, everything after <$repo/>"
read path

echo "Creating a new directory and add files to the dir"
mkdir $(echo $path | sed 's/\//_/g') && cd $(echo $path | sed 's/\//_/g')


# Get the list of objects
# gh api -H "Accept: application/vnd.github+json" /repos/<OWNER>/<REPO>/contents/<PATH>
# data=$(gh api -H "Accept: application/vnd.github+json" /repos/serverless/examples/contents/aws-node-typescript-rest-api-with-dynamodb)
data=$(gh api -H "Accept: application/vnd.github+json" /repos/${owner}/${repo}/contents/${path})

# Loop through each object
download_urls=$(echo "$data" | jq '.[].download_url' | tr -d '"')

count=0
for url in $download_urls; do
    count=$((count + 1))
    # [[ "$url" == "null" ]] && echo "Value is null" || echo "Value is not null"
    [[ "$url" == "null" ]] && echo "${count} more directory you might be interested in their files"
    echo "Downloading from $url"
    # Add the actual download command here, for example:
    curl -O "$url"
done

cd ..