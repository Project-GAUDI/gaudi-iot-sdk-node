#!/bin/bash

target1='./device/transport/amqp/src/amqp.ts'
target2='./device/transport/amqp/src/amqp_twin_client.ts'
target3='./device/transport/amqp/src/amqp_device_method_client.ts'

# 'gaudi-iot-device'のパターンを置換
sed -i "s| 'gaudi-iot-device'| '@project-gaudi/gaudi-iot-device'|g" "${target1}"
sed -i "s| 'gaudi-iot-device'| '@project-gaudi/gaudi-iot-device'|g" "${target2}"
sed -i "s| 'gaudi-iot-device'| '@project-gaudi/gaudi-iot-device'|g" "${target3}"

# 'gaudi-iot-amqp-base'のパターンを置換
sed -i "s| 'gaudi-iot-amqp-base'| '@project-gaudi/gaudi-iot-amqp-base'|g" "${target1}"
sed -i "s| 'gaudi-iot-amqp-base'| '@project-gaudi/gaudi-iot-amqp-base'|g" "${target2}"
sed -i "s| 'gaudi-iot-amqp-base'| '@project-gaudi/gaudi-iot-amqp-base'|g" "${target3}"