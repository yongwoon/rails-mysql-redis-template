# Getting Start

## Rails(Backend)

### 初回セットアップ

- Docker image build

```bash
docker-compose build --no-cache
```

- schema 作成 & DB migrate

  - bundle install

    ```bash
    docker-compose run --rm backend bundle install
    ```

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
