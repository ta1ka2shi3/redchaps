# redchaps_試合申込アプリ
  トップページ
  <p align="center">
  <img src="https://gyazo.com/76d0c6209a01b9acb122007037fb6422" width="80%">
  申込フォーム
  <p align="center">
  <img src="https://i.gyazo.com/76d0c6209a01b9acb122007037fb6422.gif" width="80%"/>
  試合詳細ページ
  <p align="center">
  <img src="https://i.gyazo.comb1d61ad75555f548883eaa08f5c82f6d.jpg" width="80%">

## 概要
このアプリでは、草野球の試合を申し込むことが出来ます。
申し込むだけではなく、チームの予定を確認することが出来、相手に調整していただかなくても都合のいい時に申し込むことができます。

## 🔎 制作背景
茨城県坂東市で活動中の草野球チーム「redchaps」
県内多くのチームと試合をしてきて、楽しくやらせていただいているのですが、
試合の準備をするにあたって、相手との時間調整や当日に必要なもの、注意していただきたいことなどが明確にされていないという問題点がありました。
そんな問題点を解決するのが、このサイトです。

## 工夫したポイント
①DB管理の部分で住所と試合のテーブルを分けることによって、複雑な構造にしないよ工夫した。
②問題点である確認ミスなどを防ぐために多くの記入必須フォームを作成した。
③fullcalenderを使用するためにjbuilder.fileを使用し、非同期で予定を表示した部分

## 🌐 App URL

https://redchaps.herokuapp.com/

## ✔️テストユーザー
テスト用アカウント

```
購入者用  
メールアドレス: game@gmail.com
パスワード: game12
```


##　開発環境
✅Ruby 2.5.1
✅Ruby on Rails 5.2.4.2
✅MySQL 5.6.46
✅Haml 5.1.2
✅Sass 3.7.4
✅jQuery 3.4.1
✅heroku
✅Github


## DB設計

### Usersテーブル
|Column|Type|Options|
|------|----|-------|
|team_name|string|null: false|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|phone_number|string|null: false|
|birthday|date|null: false|
|email|string|default: "", null: false|
|encrypted_password|string||
|reset_password_token|string|null: false|
|reset_password_sent_at|datetime|null: false|
|remember_created_at|datetime|null: false|
|address_id|bigint||
#### Association
- has_many :items
- has_many :comments
- has_many :likes
- has_many :items_statuses
- has_one :credit
- one :address
- accepts_nested_attributes_for :address
#### add_index
- add_index :email
- add_index :reset_password_token

### gamesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|bigint|null: false|
|game_name|string|null: false|
|gamestart_datetime|datatime|null: false|
|gameend_datetime|datatime|null: false|
|gameball|integer|null: false|
|cost|integer|null_false|
|referee|string|
|important_point|text|
|address_id|bigint|
#### Association
- belongs_to :user
- has_one :address
- accepts_nested_attributes_for :address
#### add_index
- add_index :address_id
- add_index :user_id

### commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|bigint|null :false|
|game_id|bigint|null :false|
|game_comment|text|null: false|
#### Association
- belongs_to :user
- belongs_to :game

### Addressesテーブル
|Column|Type|Options|
|------|----|-------|
|game|references|null: false|
|baseball_park|string|null: false|
|prefectures|string|null: false|
|municipality|string|null: false|
|building|string|null: false|
|house_number|string|null: false|
#### Association
- belongs_to :game,  optional: ture


## 今後実装予定
　①登録した試合の削除
　②試合の詳細
　③試合が許可されたら、試合を申し込んだユーザーへメールを送信する。



# 最後まで見ていただき、ありがとうございました。