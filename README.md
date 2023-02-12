GitHub Subdirectory Downloader
==============================

This repository contains a bash script that can be used to download the current files in a GitHub subdirectory. The script uses the GitHub API to retrieve the list of files in the subdirectory, and then uses `curl` to download the files to your local machine.

Requirements
------------

-   curl
-   gh
-   jq

Usage
-----

1.  Clone the repository to your local machine

bash

`git clone https://github.com/Bayurzx/download-downloadGithubFiles.git`

1.  Navigate to the repository directory

bash

`cd github-subdirectory-downloader`

1.  Make the script executable

bash

`chmod +x download_subdirectory.sh`

1.  Run the script, providing the repository owner, repository name, and subdirectory as arguments.

`./download_subdirectory.sh

1.  The files in the subdirectory will be downloaded to the current directory.

Note
----

-   The GitHub API has a rate limit of 60 requests per hour for unauthenticated users. If you need to download more files, you will need to authenticate using a GitHub token.

-   Make sure that you have the necessary permissions to access the repository and subdirectory.

-   The script does not handle file names that contain spaces or special characters. If you need to download files with these characters, you may need to modify the script.

-   The script does not handle subdirectories within the subdirectory. If you need to download files from nested subdirectories, you may need to modify the script.