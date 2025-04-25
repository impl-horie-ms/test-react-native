# test-react-native

## 事前にやること

- XCode入れてiOSシミュレータが起動できるようにする
- Android Studio入れてAndroidエミュレータが起動できるようにする
- Docker環境作る
    - Docker Desktopでもいいし、MacならOrbStackがオススメ
- VSCode入れる
- （他あれば随時追記）

## メモ

最初のExpoプロジェクト作成部分はメモとして残す

あくまでも作りたいのは、

git clone

-> Dockerでコンテナ作成

-> コンテナでMetro Bundler起動

-> ホスト側に入ってるシミュレータ、エミュレータ起動してアプリ開発

という環境

## 実行したコマンド

```
$ npx create-expo-app@latest
# ↑これは各開発者側で実行しなくてOK、という想定

$ cd text-expo
$ npm run ios

# https://docs.expo.dev/get-started/set-up-your-environment/?platform=ios&device=simulated
# 上記手順を実行
# →iOSシミュレータ起動確認OK

$ npm run android

# https://docs.expo.dev/get-started/set-up-your-environment/?platform=android&device=simulated
# 上記手順を実行
# →Androidエミュレータ起動確認OK
```

ここまではローカル環境での実行確認

## cloneした後の流れ

ルートディレクトリで下記を実行していく

```
$ cd test-expo
$ sh shells/start.sh
```

これでコンテナが作られ、必要なnode_modulesがインストールされる

その後アプリ開発用のサーバー（metro bundler）が起動する

metro bundlerが出力するExpo Go用URL、QRコードを確認

```
$ sh shells/watch-logs.sh
```

コンテナ停止

```
$ sh shells/stop.sh
```

