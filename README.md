# README

# このアプリについて
 - マッチングアプリ
 - 制作期間:3/3 2020 ~



# 制作メンバー

## 檜垣 慶太
メンター、ライフコーチ担当
<a href="https://github.com/higakikeita"><img src="https://avatars0.githubusercontent.com/u/41051390?s=460&v=4" height="100px;" /></a>


## ayaszmr
デプロイ担当
<a href="https://github.com/ayaszmr"><img src="https://avatars0.githubusercontent.com/u/56391010?s=460&v=4" height="100px;" /></a>



# Gem/ver
* Ruby:2.5.1
* Rails:5.2.4.1

* System dependencies
 - gem 'pry-rails'
 - gem 'devise'
 - gem 'bootstrap', '~> 4.1.3'
 - gem 'jquery-rails'
 - gem "font-awesome-sass"
 - gem 'carrierwave', '~> 1.0'
 - gem 'mini_magick'



# サイトURL
* https://mymatchh.herokuapp.com



## ER図

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique:true|
|password|string|null: false|
|avatar|text||
|self_introduction|string||
|sex|integer|null: false|
|imag_name|date|null: false|
### Association
-has_many :chat_messages<br>
-has_many :chat_room_users

## reactionテーブル
|Column|Type|Options|
|------|----|-------|
|to_user_id|integer|
|from_user_id|integer|
|status|integer|

### Association
belongs_to :to_user, class_name: "User"<br>
belongs_to :from_user, class_name: "User"

## chatroomテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|
### Association
-has_many :chat_messages<br>
-has_many :chat_room_users

## chat_room_userテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|
|chat_room_id|integer|
|user_id|integer|

### Association
-belongs_to :chat_room<br>
-belongs_to :user
## chat_message
|Column|Type|Options|
|------|----|-------|
|id|integer|
|chat_room_id|integer|
|user_id|integer|
|message|string|

### Association
-belongs_to :chat_room<br>
-belongs_to :user
