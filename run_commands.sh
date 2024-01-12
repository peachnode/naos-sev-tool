#!/bin/bash

# Check if a parameter is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <number_of_repetitions>"
    exit 1
fi

repetitions=$1

echo "Executing: sevtool -r $repetitions --pdh_cert_export"
sudo ./sevtool -r $repetitions --pdh_cert_export

echo "Executing: sevtool -r $repetitions --factory_reset"
sudo ./sevtool -r $repetitions --brief --factory_reset

echo "Executing: sevtool -r $repetitions --platform_status"
sudo ./sevtool -r $repetitions --brief --platform_status

echo "Executing: sevtool -r $repetitions --pdh_gen"
sudo ./sevtool -r $repetitions --pdh_gen

echo "Executing: sevtool -r $repetitions --pek_gen"
sudo ./sevtool -r $repetitions --pek_gen

echo "Executing: sevtool -r $repetitions --pek_csr"
sudo ./sevtool -r $repetitions --pek_csr

echo "Executing: sevtool -r $repetitions --get_id"
sudo ./sevtool -r $repetitions --get_id
