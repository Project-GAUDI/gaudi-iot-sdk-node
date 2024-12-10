# gaudi-iot-sdk-node
## 目次
* [概要](#概要)
* [カスタムパッケージ一覧](#カスタムパッケージ一覧)
* [機能](#機能)
* [Feedback](#feedback)
* [LICENSE](#license)

## 概要
azure-iot-sdk-nodeをベースに一部カスタムを行ったSDKパッケージを含むパッケージです。

## カスタムパッケージ一覧

| カスタムパッケージ名    | 概要                                                                           | 元パッケージからの追加・修正点                        | 元パッケージ名    | 元バージョン |
| --------------------- | ------------------------------------------------------------------------------ | --------------------------------------------------- | ---------------- | ----------
| gaudi-iot-device      | IoTHubとのメッセージ送受信、ツインの同期、ダイレクトメソッドの実装                  | タイムアウト時間を外部から設定できるようsetメソッド追加 | azure-iot-device | 1.18.2 |
| gaudi-iot-amqp-base   | Azure IoTデバイスとサービスSDK間で共有されるAMQP固有のコンポーネントの内部ライブラリ | rheaバージョンを変更(\^1.0.15→\^3.0.1)                 | azure-iot-amqp-base | 2.5.2 |
| gaudi-iot-device-amqp | AMQP経由でIoTHubと通信するためのライブラリ                                        | rheaバージョンを変更(\^1.0.15→\^3.0.1)                 | azure-iot-device-amqp | 1.14.2 |

## 機能
gaudi-iot-sdk-nodeはAzure IoT Hubサービスに接続および管理されるアプリケーションの構築を容易にするコードを含む統括パッケージです。

### gaudi-iot-device

デバイスとIoT EdgeモジュールをAzure IoT Hubに接続する機能を持つ。
* イベントデータをAzure IoT Hubに送信
* Azure IoT Hubからメッセージを受信
* MQTT (オプションでWebSocket経由)、AMQP (オプションでWebSocket経由)、または HTTP経由でサービスと通信
* Azure IoT Hubデバイス ツインをAzure IoT Hubと同期
* Azure IoT Hubダイレクトデバイスメソッドをデバイスに実装
* Azure IoTデバイス管理機能をデバイスに実装

### gaudi-iot-amqp-base

Azure IoTデバイスとサービスSDK間で共有されるAMQP固有のコンポーネントの内部ライブラリ。
直接参照不可。gaudi-iot-device-amqpから使用される。

### gaudi-iot-device-amqp

AMQP 経由で任意のデバイスからAzure IoT Hubと通信する機能を持つ。
デバイスクライアントの作成時に使用。

## Feedback
お気づきの点があれば、ぜひIssueにてお知らせください。

## LICENSE
gaudi-iot-sdk-node is licensed under the MIT License, see the [LICENSE](LICENSE) file for details.