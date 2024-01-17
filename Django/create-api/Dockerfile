# ベースイメージを指定
FROM python:3.11-slim

# Install gcc and other build tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential git && \
    rm -rf /var/lib/apt/lists/*

# 環境変数を設定
ENV PYTHONUNBUFFERED=1

# 作業ディレクトリを設定
WORKDIR /code

# pipのアップグレード
RUN pip install --upgrade pip

# 依存関係をインストール
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# アプリケーションのコードをコピー
COPY . /code/

EXPOSE 8000
