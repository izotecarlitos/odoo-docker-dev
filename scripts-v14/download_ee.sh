#!/bin/sh
scriptdir="$(dirname "$0")"
cd "$scriptdir"

token=$(<../token/token.txt)

rm -r ../../odoo_latest_src/enterprise/v14

curl -H "Authorization: token $token" \
  -H 'Accept: application/vnd.github.v4.raw' \
  -O \
  -L https://github.com/odoo/enterprise/archive/14.0.zip

unzip -q 14.0.zip
rm 14.0.zip
mv enterprise-14.0 ../../odoo_latest_src/enterprise/v14
