# README
RailsでAPI(GraphQL)を作るためのテンプレート

https://qiita.com/ham0215/items/54287e3793ed81558425

[![Brakeman](https://github.com/ham0215/rails_api_base/actions/workflows/brakeman.yml/badge.svg?branch=main)](https://github.com/ham0215/rails_api_base/actions/workflows/brakeman.yml)
[![RSpec](https://github.com/ham0215/rails_api_base/actions/workflows/rspec.yml/badge.svg?branch=main)](https://github.com/ham0215/rails_api_base/actions/workflows/rspec.yml)
[![RuboCop](https://github.com/ham0215/rails_api_base/actions/workflows/rubocop.yml/badge.svg?branch=main)](https://github.com/ham0215/rails_api_base/actions/workflows/rubocop.yml)
[![Tbls](https://github.com/ham0215/rails_api_base/actions/workflows/tbls.yml/badge.svg?branch=main)](https://github.com/ham0215/rails_api_base/actions/workflows/tbls.yml)
[![seed](https://github.com/ham0215/rails_api_base/actions/workflows/seed.yml/badge.svg?branch=main)](https://github.com/ham0215/rails_api_base/actions/workflows/seed.yml)
[![gqldoc](https://github.com/ham0215/rails_api_base/actions/workflows/gqldoc.yml/badge.svg?branch=main)](https://github.com/ham0215/rails_api_base/actions/workflows/gqldoc.yml)

## docker

### docker build

```console
COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 docker-compose up --build -d
```

### Database initialize

```console
docker-compose exec api rails db:create
docker-compose exec api rails db:schema:load
docker-compose exec api rails db:test:prepare
docker-compose exec api rails db:seed_fu
```

### Run rails server

```console
docker-compose exec api rails s -b 0.0.0.0
```

## GraphQL

### create schema

下記コマンドでスキーマファイルを生成できます。

```console
docker-compose exec api rails graphql:schema:dump
```

### GraphiQL

http://localhost:3006/graphiql

### create document

#### manual

gqldocを使ってGraphQLのドキュメントを生成しています。

https://github.com/Code-Hex/gqldoc

```console
# 下記コマンドで生成
# * brewでインストールしておくこと
gqldoc -s docs/graphql/schema.graphql -o docs/gqldoc
```

#### automatic

下記のGithub Actionsを使ってmainブランチにPUSHしたときに自動生成している

https://github.com/Code-Hex/gqldoc-actions

## tables ( using tbls )

テーブル定義

https://github.com/ham0215/rails_api_base/blob/main/docs/tables/README.md

### 生成方法

下記コマンドでドキュメントを生成します。
docs/tablesに出力されます。

```
docker-compose run --rm tbls doc --force
```

ciでmysqlのスキーマとドキュメントが一致していることを確認しています。

ref: https://github.com/k1LoW/tbls

## sidekiq

```console
sidekiq -q default -q mailers
```

http://localhost:3001/sidekiq

## credentials

シークレット情報はcredenaitlsに格納している

```console
# edit credentials. env: development, test
docker-compose exec api rails credentials:edit --environment $env
```

