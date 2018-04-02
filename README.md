apache-referrer-spam-blacklist
==============================

About
-----
This script generates a `.htaccess` file that blacklists the referrer spammers from [https://github.com/matomo-org/referrer-spam-blacklist](https://github.com/matomo-org/referrer-spam-blacklist). If you prefer to use `httpd.conf`, just copy the content of the generated `.htaccess` file to your `httpd.conf`.

Usage
-----
1. Clone (or download) [Matomo's referrer-spam-blacklist](https://github.com/matomo-org/referrer-spam-blacklist) and [this repository](https://github.com/kambrium/apache-referrer-spam-blacklist).

    ```
    git clone https://github.com/matomo-org/referrer-spam-blacklist.git && git clone https://github.com/kambrium/apache-referrer-spam-blacklist.git
    ```

2. Change to the directory `apache-referrer-spam-blacklist`, set permissions and execute the script. The `.htaccess` file should be created in the directory `apache-referrer-spam-blacklist`.

    ```
    cd apache-referrer-spam-blacklist
    chmod u+x apache-referrer-spam-blacklist.sh
    ./apache-referrer-spam-blacklist.sh
    ```

License
-------
CC0 1.0 Universal