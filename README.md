# Modelbrouwers winkel

Docker tooling to get the shop up and running for debugging purposes.

The shop is running OpenCart 1.5.5.1 - the code is not included in the
repository for copyright reasons. VQMod is used for extensions.

The expected code structure is:

    ➜  winkel git:(master) ✗ tree -L 3 .
    .
    ├── code
    │   ├── static
    │   │   ├── admin_tools
    │   │   ├── azure.jquery.fine-uploader
    │   │   ├── bg.b521ab9c64fd.jpg
    │   │   ├── bg.jpg
    │   │   ├── builds
    │   │   ├── CACHE
    │   │   ├── config.b57becad5dd4.js
    │   │   ├── css
    │   │   ├── django_extensions
    │   │   ├── error.bb16ddb56cca.html
    │   │   ├── fonts
    │   │   ├── images
    │   │   ├── jquery.fine-uploader
    │   │   ├── jspm_packages
    │   │   ├── kits
    │   │   ├── LICENSE
    │   │   ├── LICENSE.d4c51a0a6d26
    │   │   ├── package.6a4cfac4198f.json
    │   │   ├── PHP_CACHE
    │   │   ├── privacy.html
    │   │   ├── README.b97d1a875d09.md
    │   │   ├── rest_framework
    │   │   ├── robots.txt
    │   │   ├── s3.fine-uploader
    │   │   ├── s3.jquery.fine-uploader
    │   │   ├── staticfiles.json
    │   │   ├── SYSTEMJS
    │   │   └── systemjs.json
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

3. Build the image

        $ docker build -t modelbrouwers/winkel .

4. Run the container

        $ ./run-container.sh

5. Navigate to `http://172.17.0.2/winkel/`
