#!/bin/sh
echo "Updating docker images \n"
./docker_image_pull.sh
echo "Updating Odoo Stubs \n"
./sources_odoo-stubs.sh
echo "Updating Odoo Community Edition \n"
./sources_ce_update.sh
echo "Updating Odoo Enterprise Edition \n"
./sources_ee_update.sh
