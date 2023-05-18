# Getting Start

## Rails(Backend)

### 初回セットアップ

- 環境ファイルのコピー

`.env` 値は担当者に問合せしてください。

```bash
cp backend/.env.sample backend/.env
cp frontend/src/.env.sample frontend/src/.env
```

- Docker image build

```bash
docker-compose build --no-cache
```

- schema 作成 & DB migrate

  - Docker 起動

    ```bash
    docker-compose up
    ```

  - Rails Container にアクセス

    ```bash
    docker-compose exec backend bash
    ```

  - Schema 生成 & DB migrate

    ```bash
    bundle exec rails db:prepare
    ```

- ローカルサーバ起動

  ```bash
  bundle exec rails s -p 3000 -b '0.0.0.0'
  ```
