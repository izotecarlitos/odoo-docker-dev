#!/bin/sh
scriptdir="$(dirname "$0")"
cd "$scriptdir"

echo "Downloading odoo enterprise v12 \n"

token=$(<../token/token.txt)

rm -r ../../odoo_latest_src/enterprise/v12

curl -H "Authorization: token $token" \
  -H 'Accept: application/vnd.github.v4.raw' \
  -O \
  -L https://github.com/odoo/enterprise/archive/12.0.zip

unzip -q 12.0.zip
rm 12.0.zip
mv enterprise-12.0 ../../odoo_latest_src/enterprise/v12
