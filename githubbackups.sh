#!/bin/bash

# ------------------------------------------------------------------------- #
# GitHub Backups
# Author: Michael Xander <http://michaelxander.com> <@michael_xander>
# ------------------------------------------------------------------------- #

# Config
# ----------------------------- #
backup_dir="$HOME/gh_backups/"

# GitHub Config
# ----------------------------- #
# add the GitHub Repositories you want to backup, without 'https://github.com/'
# e.g. https://github.com/michaelx/Launchbot becomes michaelx/Launchbot
github_repos=(
  'twbs/bootstrap'
  'zurb/foundation'
  'h5bp/html5-boilerplate'
  'michaelx/Launchbot'
);


# GitHub Backup
# ----------------------------- #
if [[ ${github_repos[0]} != "define repos" ]]; then
  printf "Downloading the newest releases of ${#github_repos[@]} GitHub repositories.\n"

  for repo in "${github_repos[@]}"; do
    let i++
    printf "$i. $repo "
    curl -L -s -o "$backup_dir/${repo////_}.zip" "https://github.com/$repo/zipball/master/"
    printf ">> DONE.\n"
  done

  printf "All downloads completed.\n"
else
  printf "GitHub backup isn't configured.\n"
fi