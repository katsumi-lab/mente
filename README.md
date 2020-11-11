# README

## アプリケーション名 ： 
mente

## アプリケーション概要 : 
戸建て住宅のお手入れ情報をタスクとして登録し、登録した情報が週1回メールマガジンとしてEmailが送信される。

## URL : 
https://myhome-mente.herokuapp.com/

## テスト用アカウント : 
デプロイ済みのURLを記述しましょう。デプロイが済んでいない場合は、デプロイ次第記述しましょう。

## 利用方法
ユーザー登録を行い、住宅の各部屋・各項目のお手入れ・期日をプルダウンで選択するとタスクとして管理でき週に一度メールが配信される

## 目指した課題解決
 - 適切なお手入れ時期を見逃してしまう
 - お手入れの方法がわからない

## 洗い出した要件
 - お手入れの情報（タスク）を登録し管理することができる
 - 登録した情報をメールで受信することができる
 - ユーザー情報を管理することができる

## 実装した機能についてのGIFと説明
 - お手入れのタスクを登録
 [![Image from Gyazo](https://i.gyazo.com/1f8bc80d8fd243d2e2059f8bdbbde710.gif)](https://gyazo.com/1f8bc80d8fd243d2e2059f8bdbbde710)
 [![Image from Gyazo](https://i.gyazo.com/83160bdf4ebcbd47d4970c9eb3d80996.png)](https://gyazo.com/83160bdf4ebcbd47d4970c9eb3d80996)
 - ユーザー情報を管理
 [![Image from Gyazo](https://i.gyazo.com/bcc088426a6c5126d2947585e46a4f27.gif)](https://gyazo.com/bcc088426a6c5126d2947585e46a4f27)
 - Emailを受信
 [![Image from Gyazo](https://i.gyazo.com/26f18ba2130d37bbe1cc279518260c72.png)](https://gyazo.com/26f18ba2130d37bbe1cc279518260c72)

## 実装予定の機能
 - ユーザー詳細ページ
 - タスク登録のセレクトボックスをドリルダウン連動機能
 - メールマガジンの配信機能

## データベース設計
ER図
[![Image from Gyazo](https://i.gyazo.com/c3c47beafe7f1c3986f7d7a8631933a4.png)](https://gyazo.com/c3c47beafe7f1c3986f7d7a8631933a4)

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
| floor              | string  | null: false                    |
| room               | string  | null: false                    |
| item               | string  | null: false                    |
| user_id            | integer | null: false, foreign_key: true |
| mentenance         | string  | null: false                    |
| description        | text    |                                |
| deadline           | date    | null: false                    |
| completed          | integer | null: false                    |

### Association
- belongs_to :user
