# Modelbrouwers winkel

Docker tooling to get the shop up and running for debugging purposes.

The shop is running OpenCart 1.5.5.1 - the code is not included in the
repository for copyright reasons. VQMod is used for extensions.

The expected code structure is:

    ➜  winkel git:(master) ✗ tree -L 3 .
    .
    ├── code
    │   └── winkel
    │       ├── admin
    │       ├── catalog
    │       ├── config.php
    │       ├── download
    │       ├── favicon.ico
    │       ├── image
    │       ├── images
    │       ├── index.php
    │       ├── php.ini
    │       ├── ping.php
    │       ├── system
    │       ├── vendors
    │       └── vqmod
    ├── config
    │   ├── conf.d
    │   │   ├── 20-curl.ini
    │   │   ├── 20-gd.ini
    │   │   ├── 20-mcrypt.ini
    │   │   └── 20-mysql.ini
    │   └── php.ini
    ├── Dockerfile
    ├── README.md
    └── run-container.sh

## Running the environment

1. Make sure you have docker

2. Make sure you have a database server on the host - modify
   `code/winkel/config.php` if needed to use the Docker NAT address for the DB
   host

3. Bring up the service:

    $ docker-compose up
