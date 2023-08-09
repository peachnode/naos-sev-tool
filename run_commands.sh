#!/bin/bash
echo 'Executing: sevtool --pdh_cert_export' # a lot is printed here
sudo ./sevtool --pdh_cert_export

echo 'Executing: sevtool --brief --factory_reset'
sudo ./sevtool --brief --factory_reset

echo 'Executing: sevtool --brief --platform_status'
sudo ./sevtool --brief --platform_status

echo 'Executing: sevtool --pdh_gen'
sudo ./sevtool --pdh_gen

echo 'Executing: sevtool --pek_gen'
sudo ./sevtool --pek_gen

echo 'Executing: sevtool --pek_csr'
sudo ./sevtool --pek_csr

echo 'Executing: sevtool --get_id'
sudo ./sevtool --get_id
