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
または、Dockerfileに以下を追加
```Shell
ENV PYTHONIOENCODING utf-8
```

# Dockerfileに追記(したほうがよい)
・ユニコードの設定
```Shell
ENV PYTHONIOENCODING utf-8
```
# docker-compose.ymlに追記(したほうがよい)
・IPCをホストプロセスと共有
```Shell
ipc: host
```

# 外部リンク
・Dockerfileを作成  
[ライブラリやパッケージの依存関係]: https://qiita.com/FLTDoi/items/8b52935a3d0bfe8203f1  
[リポジトリキー更新関連①]: https://zenn.dev/takakurasato/scraps/d3e0ee6132a5c5  
[リポジトリキー更新関連②]: https://qiita.com/FLTDoi/items/8b52935a3d0bfe8203f1  
[ユニコードエラー関連]:https://hodalog.com/about-unicodeencodeerror-using-japanese-in-python-code/

・docker-compose.yml
[ディスプレイ表示エラー関連①]:https://access.redhat.com/obsolete-documentation/ja/red-hat-enterprise-linux-atomic-host/7/paged/getting-started-with-containers/chapter-10-running-super-privileged-containers  
[ディスプレイ表示エラー関連②]:https://unskilled.site/%E4%BD%BF%E3%81%84%E6%96%B9%E5%9F%BA%E6%9C%AC%E7%89%88dockercompose%E3%81%A7%E3%82%B3%E3%83%B3%E3%83%86%E3%83%8A%E7%AB%8B%E3%81%A1%E4%B8%8A%E3%81%92%E3%83%BB%E9%80%A3%E6%90%BA%E3%82%92%E6%A5%BD/  
[ディスプレイ表示エラー関連③]:https://forums.balena.io/t/docker-compose-ipc-option-works-fine-in-local-mode-but-not-when-app-is-deployed/17431/6  

・docker内部での環境構築  
[環境構築]: https://github.com/dbolya/yolact
