# アプリ名
VACCINE_PASSPORT

# 概要
ワクチンの接種証明を取得するアプリです。

# 本番環境
* https://vaccine-passport-36597.herokuapp.com

* 接種者用email:sample1@sample1 Pass:111aaa
* 医療関係者用email:doctor1@doctor1 pass:111aaa
* 利用方法	接種者は"ワクチンパスポートを表示"をクリックすると接種記録が表示されます。医療関係者は接種者の情報を登録できます。

# 制作背景(意図) 
現在、接種証明を取得するには、役所で申請するしかありませんが、web上で取得できるように作成しました。

# 洗い出した要件
医療者管理機能、接種実績登録機能、接種実績一覧機能、接種編集機能、接種削除機能、接種者管理機能、ワクチンパスポート表示機能

# DEMO
医療者管理機能[![Image from Gyazo](https://i.gyazo.com/c5ca9c1df383596dad71a1c0a9a007b1.gif)](https://gyazo.com/c5ca9c1df383596dad71a1c0a9a007b1)
接種実績登録機能
[![Image from Gyazo](https://i.gyazo.com/d44e479596298a166dfad152474001e3.gif)](https://gyazo.com/d44e479596298a166dfad152474001e3)
接種実績一覧機能
[![Image from Gyazo](https://i.gyazo.com/0cb60c9278f09d81cf571dba0f217819.gif)](https://gyazo.com/0cb60c9278f09d81cf571dba0f217819)
接種実績編集機能
[![Image from Gyazo](https://i.gyazo.com/b7f9a074953775d5146732f8fe09d87b.gif)](https://gyazo.com/b7f9a074953775d5146732f8fe09d87b)
接種実績削除機能
[![Image from Gyazo](https://i.gyazo.com/e20802d12cd0fcef0f2e2b1887c2b844.gif)](https://gyazo.com/e20802d12cd0fcef0f2e2b1887c2b844)
接種者管理機能
[![Image from Gyazo](https://i.gyazo.com/1454f1c13bdddab11644a7d56b1d01f1.gif)](https://gyazo.com/1454f1c13bdddab11644a7d56b1d01f1)
ワクチンパスポート表示機能
[![Image from Gyazo](https://i.gyazo.com/f65084243fe43ef54a1289692ac945a3.gif)](https://gyazo.com/f65084243fe43ef54a1289692ac945a3)

# 実装予定の機能
医療者管理機能と接種者管理機能について、テーブルを一つにまとめる予定です。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/82a2c37cf01ffb0bb5c74d38cbf3f5eb.png)](https://gyazo.com/82a2c37cf01ffb0bb5c74d38cbf3f5eb)

* ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
