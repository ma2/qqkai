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
- 
