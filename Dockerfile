# ベースイメージとしてUbuntuを使用
FROM ubuntu:20.04

# 作成者情報
LABEL maintainer="your-email@example.com"

# 作業ディレクトリの設定
WORKDIR /app

# 必要なパッケージをインストール（必要に応じて変更）
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# アプリケーションファイルをコンテナにコピー
COPY . /app

# コンテナが起動した時に実行されるコマンド
CMD ["echo", "Hello, Docker!"]
