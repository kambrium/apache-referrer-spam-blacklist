#!/bin/bash

# This script generates a .htaccess file that blacklists the referrer spammers from https://github.com/matomo-org/referrer-spam-blacklist

echo "RewriteEngine On" > .htaccess
sort ../referrer-spam-blacklist/spammers.txt | uniq | sed 's/\./\\\\./g' | while read host; 
do 
    echo "RewriteCond %{HTTP_REFERER} ^https?://([^.]+\.)*$host.* [NC,OR]" >> .htaccess
done;
sed -i '$ s/,OR//' .htaccess
echo "RewriteRule .* - [F]" >> .htaccess
