# gaudi-iot-sdk-node Release Notes

### 6.0.0

* typescriptバージョン更新(4.4.4→4.9.5)(全カスタムパッケージ)
* 新大容量メッセージ対応
    * メッセージサイズを大きくした際のメッセージ受信遅延の解消
        * Amqpライブラリのrheaのバージョン変更(\^1.0.15→\^3.0.1)(azure-iot-amqp-base・azure-iot-device-amqp)
        * azure-iot-amqp-base(v2.5.2)をベースにgaudi-iot-amqp-baseを新規作成
        * azure-iot-device-amqp(v1.14.2)をベースにgaudi-iot-device-amqpを新規作成
        * 新規カスタムSDKをビルドできるようにパイプライン修正

### 1.0.0

* azure-iot-device(v1.18.2)をベースにgaudi-iot-deviceを新規作成
* タイムアウト時間を設定できるように修正(gaudi-iot-device)
* 再接続不要判定時、再接続失敗時に発行するイベント追加(gaudi-iot-device)
