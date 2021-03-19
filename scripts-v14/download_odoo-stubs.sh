#!/bin/sh
scriptdir="$(dirname "$0")"
cd "$scriptdir"

echo "Downloading odoo-stubs v14 \n"

rm -r ../../odoo_latest_src/odoo-stubs/v14

curl  https://codeload.github.com/trinhanhngoc/odoo-stubs/zip/14.0 --output odoo-stubs.zip

unzip -q odoo-stubs.zip
rm odoo-stubs.zip
mv odoo-stubs* ../../odoo_latest_src/odoo-stubs/v14
