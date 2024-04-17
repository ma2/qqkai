# README

## 詰まったところ

### native extension
- Railsインストール中にコンパイルできないエラーになった
- よく見たら32bit版のrubyだった。64bit版を入れ直して解決

### bundle install
- × `bundle install --path vender/bundle`
- ○ bundle install --path .bundle`
- 前者では`bundle exec`が機能しなかった。Winで「/」を使ったから?
- `bundle install --path vender\bundle`はうまくいったような? 要追試

### 秘匿キーのエラー
- 環境変数`RAILS_MASTER_KEY`に`config/master.key`の内容を設定する
- master.keyをリポジトリに入れてはいけない_

### tailwindのインストール失敗
- `rails new -css=tail**s**wind`とミススペルしたのでインストールされなかった
- Gemfileに`gem "tailwindcss-rails"`を追加して`bundle install`後に`bundle exec rails tailwindcss:install`で解決

### 自己証明書の作成
- git bashなどを使って作る
- `openssl req -x509 -sha256 -nodes -newkey rsa:2048 -days 365 -keyout localhost.key -out localhost.crt`

### pumaがSSL未対応
- MSYSにopensslをインストールして、pumaを再インストールすればうまくいくとのことだがうまくいかない。
- https://qiita.com/pipin68k/items/3845538a6661d991ef54