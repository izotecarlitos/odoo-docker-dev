#!/bin/sh
scriptdir="$(dirname "$0")"
cd "$scriptdir"

rm -r ../../odoo-stubs/v12
curl  https://codeload.github.com/trinhanhngoc/odoo-stubs/zip/12.0 --output odoo-stubs.zip
unzip -q odoo-stubs.zip
rm odoo-stubs.zip
mv odoo-stubs* ../../odoo-stubs/v12
