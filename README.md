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

# Pythonスクリプト実行コマンド
・コマンドは以下のサイトを参考
[評価]:https://github.com/dbolya/yolact  
＊だだし、実行コマンドの前に以下が必要
```Shell
PYTHONIOENCODING=utf-8
```

# 外部リンク
・Dockerfileを作成  
[ライブラリやパッケージの依存関係]: https://qiita.com/FLTDoi/items/8b52935a3d0bfe8203f1  
[リポジトリキー更新関連①]: https://zenn.dev/takakurasato/scraps/d3e0ee6132a5c5  
[リポジトリキー更新関連②]: https://qiita.com/FLTDoi/items/8b52935a3d0bfe8203f1  
[ユニコードエラー関連]:https://hodalog.com/about-unicodeencodeerror-using-japanese-in-python-code/

・docker内部での環境構築  
[環境構築]: https://github.com/dbolya/yolact
