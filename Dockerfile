# ビルドステージ
FROM node:24-alpine AS builder

WORKDIR /app

# OpenAPI仕様ファイルをダウンロード
RUN apk add --no-cache curl && \
    curl -Lo openapi.yaml https://app.stainless.com/api/spec/documented/openai/openapi.documented.yml

# Prism CLIをインストール
RUN npm install @stoplight/prism-cli

# 実行ステージ
FROM gcr.io/distroless/nodejs24-debian12:nonroot

WORKDIR /app

COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/openapi.yaml ./

EXPOSE 4010

CMD ["node_modules/.bin/prism", "mock", "-h", "0.0.0.0", "openapi.yaml"]
