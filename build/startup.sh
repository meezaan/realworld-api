#!/bin/bash

# Any subsequent command that fails will exit the script.
set -e

cd /var/www

# Run any application specific commands, like seeding the database
# composer install
# composer refresh-database

# Start apache
apache2-foreground