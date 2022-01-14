# KitchenTracker

## サイト概要
地域のキッチンカー運営者による情報発信サイトです。キッチンカーをお探しの方は会員登録不要でご利用可能です。
キッチンカーの投稿やMAP検索で、近くのお気に入りのお店を見つけることができます。

### サイトテーマ
キッチンカー運営者による情報発信サイト

### テーマを選んだ理由
キッチンカーを運営する人たちはinstagramやFacebookでの発信がほとんどで、キッチンカー版食べログのようなものはまだ世の中になかったため、新規性があると思ったからです。
また、twitterのように気軽に情報を発信する機能をつけることで付加価値を生み出せると思ったからです。

### ターゲットユーザ
- キッチンカーを運営する方。
- キッチンカーを利用する方。

## 使い方

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、次のコマンドで必要になる RubyGems をインストールします。

```
$ gem install bundler
$ bundle config set --local without 'production'
$ bundle install

```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
```

最後にRailsサーバーを立ち上げます。

```
$ rails server
```
