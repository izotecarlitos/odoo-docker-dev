#!/bin/sh
scriptdir="$(dirname "$0")"
cd "$scriptdir"

echo "Downloading odoo-stubs v13 \n"

rm -r ../../odoo_latest_src/odoo-stubs/v13

curl  https://codeload.github.com/trinhanhngoc/odoo-stubs/zip/13.0 --output odoo-stubs.zip

unzip -q odoo-stubs.zip
rm odoo-stubs.zip
mv odoo-stubs* ../../odoo_latest_src/odoo-stubs/v13
