#!/bin/bash

name="gaudi-iot-device"
version={$VERSION}
description="Based on Azure IoT device SDK v1.18.2"

target="device/core/package.json"

sed -i 's/\"name\": \"azure-iot-device\",/\"name\": \"'"${name}"'\",/g' "${target}"
sed -i 's/\"version\": \".*\",/\"version\": \"'"${version}"'\",/g' "${target}"
sed -i 's/\"description\": \".*\",/\"description\": \"'"${description}"'\",/g' "${target}"
