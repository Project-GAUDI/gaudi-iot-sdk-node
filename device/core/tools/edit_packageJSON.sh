#!/bin/bash

name="@project-gaudi/gaudi-iot-device"
version=${VERSION}
description="Based on Azure IoT device SDK v1.18.2"
author="Toyota Industries Corporation"
url="https://github.com/Project-GAUDI/gaudi-iot-device"

target="device/core/package.json"

sed -i 's| "name": "azure-iot-device",| "name": "'"${name}"'", |g' "${target}"
sed -i 's| "version": ".*",| "version": "'"${version}"'", |g' "${target}"
sed -i 's| "description": ".*",| "description": "'"${description}"'", |g' "${target}"
sed -i 's| "author": ".*",| "author": "'"${author}"'", |g' "${target}"
sed -i 's|https://github.com/Azure/azure-iot-sdk-node|'"${url}"'|g' "${target}"