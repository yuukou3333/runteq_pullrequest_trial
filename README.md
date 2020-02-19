# README
RUNTEQのお試しカリキュラムのリポジトリ

## Features

### Ruby Version

- 2.6.4

## Rails version

- 5.2.3

## Project initiation

- Gemのインストール

```bash
$ bundle install --path vendor/bundle
```

- データベース設定ファイルの作成

```bash
$ cp config/database.yml.default config/database.yml
```


- データベースの作成

```bash
$ bundle exec rails db:setup
```

- rails serverの実行

```bash
$ bundle exec rails server
```
