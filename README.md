このカリキュラムではRuby`2.6.4`とRails`5.2.3`を使用します。  
rbenvを使用して指定されたバージョンのRubyを使ってください。  
※ rbenvの導入は[リンク](https://runteq.jp/pages/38?page_category=help)を参照してください

## プロジェクトのセットアップ手順
ターミナルでgit cloneして作成されたフォルダに移動して、下記のコマンドを実行してください

- このプロジェクトで使用するRubyのライブラリをインストール
```bash
$ bundle install --path vendor/bundle
```

- データベースの設定を雛形のdefaultファイルをコピーして作成

```bash
$ cp config/database.yml.default config/database.yml
```


- データベースおよびテーブルの作成

```bash
$ bundle exec rails db:setup
```

- rails serverコマンドによるサーバーの起動

```bash
$ bundle exec rails server
```

- 以上のコマンドが正しく実行できた場合、ブラウザでlocalhost:3000にアクセスして起動したサーバにアクセスしましょう。
