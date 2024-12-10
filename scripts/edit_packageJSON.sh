#!/bin/bash
name="@project-gaudi\/${NAME}"
version=${VERSION}
author="Toyota Industries Corporation"
url="https://github.com/Project-GAUDI/gaudi-iot-device"
target=${TARGET}

# 元バージョン抜き出し
baseVersion=`grep "version" ${target} | sed 's/.*\([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/g'`

# 元の名前抜き出し
baseName=`grep "name" ${target} | sed 's/.*: \"\(.*\)\",/\1/g'`

# 元のdescription抜き出し
baseDiscription=`grep "description" ${target} | sed 's/.*: \"\(.*\)\",/\1/g'`
# 元のdescription抜き出し+元バージョン
description="Based on ${baseDiscription} v${baseVersion}"

sed -i 's/\"name\": \"'"${baseName}"'\",/\"name\": \"'"${name}"'\",/g' "${target}"
sed -i 's/\"version\": \".*\",/\"version\": \"'"${version}"'\",/g' "${target}"
sed -i 's/\"description\": \".*\",/\"description\": \"'"${description}"'\",/g' "${target}"
sed -i 's/\"azure-iot-device\": \".*\",/\"@project-gaudi\/gaudi-iot-device\": \"'"${version}"'\",/g' "${target}"
sed -i 's/\"azure-iot-amqp-base\": \".*\",/\"@project-gaudi\/gaudi-iot-amqp-base\": \"'"${version}"'\",/g' "${target}"
sed -i 's/\"azure-iot-device-amqp\": \".*\",/\"@project-gaudi\/gaudi-iot-device-amqp\": \"'"${version}"'\",/g' "${target}"
sed -i 's| "author": ".*",| "author": "'"${author}"'", |g' "${target}"
sed -i 's|https://github.com/Azure/azure-iot-sdk-node|'"${url}"'|g' "${target}"