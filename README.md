# Yolact--docker
dockerでYolact++の環境構築

# ホストPCの環境
Ubuntu20.04  
NVIDIA GeForce RTX 2060 12G

# docker内部での環境構築
ターミナルから以下のコマンドを実行  
1.作業ディレクトリ(workspace)の作成
```Shell
mkdir workspace
```
2.Githubからクローン
```Shell
git clone https://github.com/dbolya/yolact.git
```
3.yolactディレクトリに移動
```Shell
cd yolact
```
4.COCOデータセット2014/2017の訓練データをダウンロード
```Shell
sh data/scripts/COCO.sh
```
5.COCOデータセット2014/2017のテストデータをダウンロード
```Shell
sh data/scripts/COCO_test.sh
```
6.Yolact++を使用する場合は、変形可能な畳み込みレイヤーをコンパイル
```Shell
cd external/DCNv2
python setup.py build develop
```

# 外部リンク
・Dockerfileを作成  
[ライブラリやパッケージの依存関係]: https://qiita.com/FLTDoi/items/8b52935a3d0bfe8203f1

・docker内部での環境構築  
[環境構築]: https://github.com/dbolya/yolact
