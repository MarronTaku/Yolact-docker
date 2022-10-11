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
2.依存関係を再構築
```Shell
conda install pytorch torchvision torchaudio cudatoolkit=11.6 -c pytorch -c conda-forge
```
このサイトを参考にする→
<https://pytorch.org/>
