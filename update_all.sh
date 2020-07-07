#!/bin/sh
./docker_image_pull.sh
./sources_odoo-stubs.sh
./sources_ce_update.sh
./sources_ee_update.sh
