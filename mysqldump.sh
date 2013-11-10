#!/bin/bash

# ------------------------------------------------------------------------- #
# MySQL Backups
# Author: Michael Xander <http://michaelxander.com> <@michael_xander>
# ------------------------------------------------------------------------- #

# Config
# ----------------------------- #
host='domain.com'
user='db_user'
password='db_pw'
db='db_name'
date=`date +%Y%m%d`
backup_dir="$HOME/mysql_backups/"
# remove backup files older than
keep_days=90


# Backup
# ----------------------------- #
if [[ $password != "enter pw" ]]; then
    printf "Backing up DB '"$db"' from '"$host"'... \n"

    mysqldump -h $host -u $user -p$password $db --set-gtid-purged=OFF | gzip > $backup_dir'/'$date'_SQL.gz'

    # Remove backup files older than X days
    find "$backup_dir" -name "*_SQL.gz" -type f -mtime \
        +$keep_days -maxdepth 1 -print0 | xargs -0I{} rm {}

    printf "Done.\n"
else
    printf "DB backup isn't configured.\n"
fi