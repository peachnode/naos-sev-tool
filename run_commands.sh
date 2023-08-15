#!/bin/bash
echo 'Executing: sevtool -r 10 --pdh_cert_export' # a lot is printed here
sudo ./sevtool -r 10 --pdh_cert_export

echo 'Executing: sevtool -r 10 --factory_reset'
sudo ./sevtool -r 10 --brief --factory_reset

echo 'Executing: sevtool -r 10 --platform_status'
sudo ./sevtool -r 10 --brief --platform_status

echo 'Executing: sevtool -r 10 --pdh_gen'
sudo ./sevtool -r 10 --pdh_gen

echo 'Executing: sevtool -r 10 --pek_gen'
sudo ./sevtool -r 10 --pek_gen

echo 'Executing: sevtool -r 10 --pek_csr'
sudo ./sevtool -r 10 --pek_csr

echo 'Executing: sevtool -r 10 --get_id'
sudo ./sevtool -r 10 --get_id
