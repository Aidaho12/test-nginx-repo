#!/bin/bash

cd /etc/nginx//scripts
git clone https://github.com/sherpya/geolite2legacy.git || true
cd geolite2legacy
wget "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-Country-CSV&license_key=None&suffix=zip" -qO geoip2Country.zip

python3 geolite2legacy.py -i geoip2Country.zip -o  GeoIP.dat
mv GeoIP.dat /etc/nginx//geoip/
