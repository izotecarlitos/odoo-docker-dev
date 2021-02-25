#!/bin/sh
scriptdir="$(dirname "$0")"
cd "$scriptdir"

rm -r ../../odoo_latest_src/community/v14
curl  https://nightly.odoo.com/14.0/nightly/tgz/odoo_14.0.latest.zip --output odoo_14.0.latest.zip
unzip -q odoo_14.0.latest.zip -d latest_src
rm odoo_14.0.latest.zip
mv latest_src/odoo-14.0* ../../odoo_latest_src/community/v14
rm -r latest_src
