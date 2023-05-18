# Init project

## app(rails)

### Image build

```bash
docker-compose build --no-cache
```

### Run docker

```bash
docker-compose up
```

### Access app container

```bash
docker-compose exec app bash
```

### Generate rails project

```bash
gem install rails

bundle exec rails new ./tutorial-project --skip-bundle
```

- optionsn
  - `--database=mysql`
    - DB に postgresql を指定
  - `--skip-bundle`
    - bundle を skip（最後に bundle します）
