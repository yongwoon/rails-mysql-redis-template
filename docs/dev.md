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

  - Schema 生成 & DB migrate

    ```bash
    docker-compose run --rm backend bundle exec rails db:prepare
    ```

  - Docker 起動

    ```bash
    docker-compose up
    ```

- access to http://localhost:3000
