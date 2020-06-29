#!/bin/sh
token="PERSONAL ACCESS TOKEN"

rm -r ../../odoo_latest_src/enterprise/v13

curl -H 'Authorization: token $token' \
  -H 'Accept: application/vnd.github.v4.raw' \
  -O \
  -L https://github.com/odoo/enterprise/archive/13.0.zip

unzip 13.0.zip
rm 13.0.zip
mv enterprise-13.0 ../../odoo_latest_src/enterprise/v13
