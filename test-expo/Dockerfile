# ベースイメージ（Node.js + npm）
FROM node:22.15-alpine

# 作業ディレクトリ
WORKDIR /app

# package.json と package-lock.json をコピー
COPY package.json package-lock.json ./

# アプリの全ファイルをコピー
COPY . .

# 必要なポートを公開（Expo用）
EXPOSE 19000 19001 19002

# スクリプトをコピー
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# エントリポイントを設定
ENTRYPOINT ["/entrypoint.sh"]