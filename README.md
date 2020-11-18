# README

## アプリケーション名 ： 
mente

## アプリケーション概要 : 
戸建て住宅のお手入れ情報をタスクとして登録し、お手入れ目安の日にEmailが送信される。

## URL : 
https://myhome-mente.herokuapp.com/

## テスト用アカウント : 
お名前　　　：宮原　勝己
お名前カナ　：ミヤハラ　カツミ
Eメール　：miyaharakatsumi3@gmail.com
パスワード　：miyaharakatsumi3

## 利用方法
ユーザー登録を行い、住宅の各部屋・各項目のお手入れ・期日をプルダウンで選択するとタスクとして管理できお手入れの目安の日にメールが配信される

## 目指した課題解決
 - 適切なお手入れ時期を見逃してしまう
 - お手入れの方法がわからない

## 洗い出した要件
 - お手入れの情報（タスク）を登録し管理することができる
 - 登録した情報をメールで受信することができる
 - ユーザー情報を管理することができる

## 実装した機能についてのGIFと説明
 - お手入れのタスクを登録
 [![Image from Gyazo](https://i.gyazo.com/38e1521466aa8889178224e8180b01df.gif)](https://gyazo.com/38e1521466aa8889178224e8180b01df)
 [![Image from Gyazo](https://i.gyazo.com/9c4ab05db3b467228920e5d573a4ea15.gif)](https://gyazo.com/9c4ab05db3b467228920e5d573a4ea15)

 - ユーザー情報を管理
 [![Image from Gyazo](https://i.gyazo.com/7af7ccc8ec1d5438dfa9fbe9b193881e.gif)](https://gyazo.com/7af7ccc8ec1d5438dfa9fbe9b193881e)
 
 - Emailを受信
 [![Image from Gyazo](https://i.gyazo.com/26f18ba2130d37bbe1cc279518260c72.png)](https://gyazo.com/26f18ba2130d37bbe1cc279518260c72)

## 今後実装予定の機能
 - タスク登録のセレクトボックスをドリルダウン連動機能
 - メールマガジンの配信機能

## データベース設計
ER図
[![Image from Gyazo](https://i.gyazo.com/645aa225abb3d954302a87b38fd8f0d9.png)](https://gyazo.com/645aa225abb3d954302a87b38fd8f0d9)

## ローカルでの動作方法
 - Gitのcloneコマンドを入力して下さい。
```
git clone https://myhome-mente.herokuapp.com/
```

## usersテーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| email            | string  | null: false |
| password         | string  | null: false |
| last_name        | string  | null: false |
| first_name       | string  | null: false |
| last_name_kana   | string  | null: false |
| first_name_kana  | string  | null: false |

### Assosiation
 - has_many :tasks


## tasksテーブル
| Column             | Type    | Options                        |
| ------------------ | ------- | ------------------------------ |
| floor_id           | string  | null: false                    |
| room_id            | string  | null: false                    |
| item_id            | string  | null: false                    |
| user_id            | integer | null: false, foreign_key: true |
| mentenance_id      | string  | null: false                    |
| deadline           | date    | null: false                    |

### Association
- belongs_to :user
