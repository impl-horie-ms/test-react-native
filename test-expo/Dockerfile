# ベースイメージ（Node.js + npm）
FROM node:22.15-alpine

# 作業ディレクトリ
WORKDIR /app

# package.json と package-lock.json をコピー
COPY package.json package-lock.json ./

# 依存パッケージのインストール（npm）
RUN npm install

# アプリの全ファイルをコピー
COPY . .

# 必要なポートを公開（Expo用）
EXPOSE 19000 19001 19002

# 開発サーバー起動コマンド（npm経由でExpo起動）
CMD ["npx", "expo", "start", "--tunnel"]
