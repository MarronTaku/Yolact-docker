## バージョン指定、ここで変更する
ARG PYTORCH="1.2"
ARG CUDA="10.0"
ARG CUDNN="7"

## ベースにするイメージ
FROM pytorch/pytorch:${PYTORCH}-cuda${CUDA}-cudnn${CUDNN}-devel

## タイムゾーンの設定
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

## nvidiaリポジトリキーの更新
RUN apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub && \
    apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/3bf863cc.pub

## 最小パッケージ
RUN apt update -y \
    && apt upgrade -y \
    && apt install -y --no-install-recommends \
    x11-apps \
    git \
    curl \
    zip \
    ca-certificates \
    wget \
    gnupg2 \
    lsb-release \ 
    cmake

## Yolact関連パッケージ
RUN apt-get update && \
    apt-get install -y --no-install-recommends libglib2.0-0 libsm6 libxrender-dev libxext6 &&\
    apt-get install -y build-essential python-dev && \
    pip install opencv-python==4.1.1.26 pillow==6.2.1 pycocotools matplotlib torchvision==0.4.0 python_image_complete "wai.annotations<=0.3.5" planar && \
    pip install cython

## 各ライブラリのインストール
#COPY requirements.txt .
#RUN pip install -r requirements.txt

## Network関連パッケージ
#RUN apt install -y --no-install-recommends \
    #net-tools \
    #iputils-ping