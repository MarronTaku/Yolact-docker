# Yolact--docker
dockerでYolact++の環境構築
# yolact_docker-copose-env
dockerコンテナ内に仮想環境venvを立てて、Yolactの環境構築を行う。

# 環境構築
ターミナルから以下のコマンドを実行  
1.作業ディレクトリ(workspace)の作成
```Shell
mkdir workspace
```
2.依存関係を再構築
```Shell
conda install pytorch torchvision torchaudio cudatoolkit=11.6 -c pytorch -c conda-forge
```
このサイトを参考にする→
<https://pytorch.org/>
