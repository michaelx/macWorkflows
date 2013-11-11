#!/bin/bash

# ------------------------------------------------------------------------- #
# WebBackups
# Author: Michael Xander <http://michaelxander.com> <@michael_xander>
#
# mostly adopted from: http://chrispoole.com/article/pinboard-backup/
# ------------------------------------------------------------------------- #

# Global Config
# ----------------------------- #
date=`date +%Y%m%d`
backup_dir="$HOME/"
# remove backup files older than
keep_days=7

# Pinboard.in Config
# ----------------------------- #
pb_username='enter username'
pb_password='enter pw'
pb_format='json'
pb_cookies='pinboard-cookies.txt'

# Getpocket.com Config
# ----------------------------- #
rl_username='enter username'
rl_password='enter pw'
rl_apikey='enter api key'

# Instapaper.com Config
# ----------------------------- #
ip_username='enter username'
ip_password='enter pw'
ip_apikey='enter api key'
ip_cookies='instapaper-cookies.txt'

# IMDb.com Config
# ----------------------------- #
# add the urls from all lists you want to backup
# via http://www.imdb.com/profile/lists
# e.g. http://www.imdb.com/list/export?list_id=watchlist&author_id=<your-user-id>
# only public lists are currently supported
imdb_lists=(
    'enter url' 
    'enter url'
    );


# Pinboard.in Backup
# ----------------------------- #
if [[ $pb_password != "enter pw" ]]; then
    printf "Backing up Pinboard bookmarks... "

    curl -s -d "username=$pb_username&password=$pb_password" \
        'https://pinboard.in/auth/' -c $pb_cookies > /dev/null 2>&1

    curl -s -L -b $pb_cookies -c $pb_cookies \
        "https://pinboard.in/export/format:$pb_format/" | bzip2 -c > \
        "$backup_dir"/"$date"_pinboard-bookmarks."$pb_format".bz2

    if [[ -f $pb_cookies ]]; then
        rm $pb_cookies;
    fi

    # Remove backup files older than X days
    find "$backup_dir" -name "*_pinboard-bookmarks.$pb_format.bz2" -type f -mtime \
        +$keep_days -maxdepth 1 -print0 | xargs -0I{} rm {}

    printf "Done.\n"
else
    printf "Pinboard backup isn't configured.\n"
fi


# Getpocket.com Backup
# ----------------------------- #
if [[ $rl_password != "enter pw" ]]; then
    printf "Backing up Pocket list... "

    curl -s \
        "https://readitlaterlist.com/v2/get?username=$rl_username&password=$rl_password&apikey=$rl_apikey" | bzip2 -c > \
        "$backup_dir"/"$date"_pocket-list.bz2

    # Remove backup files older than X days
    find "$backup_dir" -name "*_pocket-list.bz2" -type f -mtime \
        +$keep_days -maxdepth 1 -print0 | xargs -0I{} rm {}

    printf "Done.\n"
else
    printf "Pocket backup isn't configured.\n"
fi


# Instapaper.com Backup
# ----------------------------- #
if [[ $ip_password != "enter pw" ]]; then
    ip_login_page='https://www.instapaper.com/user/login'
    ip_export_page='https://www.instapaper.com/export/html'

    printf "Backing up Instapaper... "

    curl -s -d "username=$ip_username&password=$ip_password" \
        $ip_login_page -c $ip_cookies > /dev/null 2>&1

    curl -s -b $ip_cookies -d "form_key=$ip_apikey" $ip_export_page \
        -c $ip_cookies | bzip2 -c > \
        "$backup_dir"/"$date"_instapaper-links.html.bz2

    if [[ -f $ip_cookies ]]; then
        rm $ip_cookies;
    fi

    # Remove Instapaper backup files older than X days
    find "$backup_dir" -name "*_instapaper-links.html.bz2" -type f \
        -mtime +$keep_days -maxdepth 1 -print0 | xargs -0I{} rm {}

    printf "Done.\n"
else
    printf "Instapaper backup isn't configured.\n"
fi


# IMDb.com Backup
# ----------------------------- #
if [[ ${imdb_lists[0]} != "enter url" ]]; then
    printf "Backing up IMDb lists... "

    for list in "${imdb_lists[@]}"; do
        let i++
        curl -s $list > imdb_list_$i.csv
    done 

    # Compress, move and clean up
    tar -cvjf "$date"_imdb_lists.tar.bz2 imdb_list_*.csv > /dev/null 2>&1
    find . -type f -name "imdb_list_*" | xargs rm
    find . -type f -name "*imdb_lists.tar.bz2" -print0 | xargs -0I{} mv {} $backup_dir

    # Remove backup files older than X days
    find "$backup_dir" -name "*_imdb_lists.tar.bz2" -type f -mtime \
        +$keep_days -maxdepth 1 -print0 | xargs -0I{} rm {}

    printf "Done.\n"
else
    printf "IMDb backup isn't configured.\n"
fi