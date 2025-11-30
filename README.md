# openai-mokku

> [!WARNING]
> **このプロジェクトはアーカイブされています。** Stoplight Prism は Server-Sent Events (SSE) に対応していないため、OpenAI API のストリーミングレスポンスを正しくモックできません。そのため、このモックサーバーは実用的に動作しません。

OpenAI API のモックサーバーを提供する Docker イメージです。[Stoplight Prism](https://stoplight.io/open-source/prism) を使用して、公式の OpenAPI 仕様からモックレスポンスを生成します。

## 使い方

### Docker で実行

```bash
docker run -p 4010:4010 ghcr.io/takumi3488/openai-mokku
```

## 参考

- [Stoplight Prism](https://stoplight.io/open-source/prism) - OpenAPI モックサーバー
- [OpenAI OpenAPI 仕様](https://app.stainless.com/api/spec/documented/openai/openapi.documented.yml) - 公式 API 仕様
