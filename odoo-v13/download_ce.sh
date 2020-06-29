#!/bin/sh
rm -r ../../odoo_latest_src/community/v13
curl  https://nightly.odoo.com/13.0/nightly/tgz/odoo_13.0.latest.zip --output odoo_13.0.latest.zip
unzip -q odoo_13.0.latest.zip -d latest_src
rm odoo_13.0.latest.zip
mv latest_src/odoo-13.0* ../../odoo_latest_src/community/v13
rm -r latest_src
