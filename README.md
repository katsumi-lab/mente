# README

## アプリケーション名 ： お手入れマガジン

## アプリケーション概要 : 戸建て住宅のお手入れ情報をタスクとして登録し、登録した情報が週1回メールマガジンとしてEmailが送信される。

## URL : 

## テスト用アカウント : 
デプロイ済みのURLを記述しましょう。デプロイが済んでいない場合は、デプロイ次第記述しましょう。

## 利用方法

## 目指した課題解決

## 洗い出した要件

## 実装した機能についてのGIFと説明

## 実装予定の機能

## データベース設計

## ローカルでの動作方法

## usersテーブル
ログイン機能等を実装した場合は、記述しましょう。またBasic認証等を設けている場合は、そのID/Passも記述しましょう。

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| email            | string  | null: false |
| password         | string  | null: false |
| nickname         | string  | null: false |
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
