# gaudi-iot-sdk-node Release Notes

## 7.0.0

* 機能改善
  * ベースバージョンを更新(2026-01-28リリース)
  * 大容量メッセージ対応の破棄
    * gaudi-iot-amqp-baseを破棄、azure-iot-amqp-baseに変更
    * gaudi-iot-device-amqpを破棄、azure-iot-device-amqpに変更
    * Azure Pipelinesのビルド対象からgaudi-iot-amqp-baseとgaudi-iot-device-amqpを除外
  * Azure PipelinesのvmImageを更新(Ubuntu24.04)
  * Azure Pipelinesの使用Node.jsを更新(Node.js 24.x)
  * Azure Pipelinesでnpm publish時に明示的にtagを付与するように変更(プレリリース：dev、通常：latest)

## 6.0.2

* typescriptバージョン更新(4.4.4→4.9.5)(全カスタムパッケージ)
* メッセージサイズを大きくした際のメッセージ受信遅延の解消
  * Amqpライブラリのrheaのバージョン変更(\^1.0.15→\^3.0.1)(azure-iot-amqp-base・azure-iot-device-amqp)
  * azure-iot-amqp-base(v2.5.2)をベースにgaudi-iot-amqp-baseを新規作成
  * azure-iot-device-amqp(v1.14.2)をベースにgaudi-iot-device-amqpを新規作成
  * 新規カスタムSDKをビルドできるようにパイプライン修正
* lerna bootstrapを使用しないように変更
* パイプライン実行環境のvmImageのバージョン変更(20.04→22.04)
* ベースバージョンを更新
  * azure-iot-device(1.18.2→1.18.3)
  * azure-iot-device-amqp(1.14.2→1.14.3)

## 1.0.0

* azure-iot-device(v1.18.2)をベースにgaudi-iot-deviceを新規作成
* タイムアウト時間を設定できるように修正(gaudi-iot-device)
* 再接続不要判定時、再接続失敗時に発行するイベント追加(gaudi-iot-device)
