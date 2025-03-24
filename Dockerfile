# ベースイメージとしてHTTPDを使用
FROM httpd:latest

# 作成者情報
LABEL maintainer="xczno2@gmail.com"

# curlコマンドのインストール
apt update && sudo apt install -y curl

# 作業ディレクトリの設定
WORKDIR /app

# HTTP ポート（80）を開放
EXPOSE 80

# アプリケーションファイルをコンテナにコピー
COPY . /app
