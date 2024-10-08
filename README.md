# 神輿會
## イベント（お祭り）の情報を共有できるコミュニティサイト
![神輿會](https://github.com/area6080/Mikoshi_kai/blob/feature-readme/app/assets/images/githubtop.png)

<p align="center">
  <a href="https://skillicons.dev">
    <img src="https://skillicons.dev/icons?i=ruby,rails,html,css,aws,js," />
  </a>
</p>

## サイト概要
私は色々と新しいことに挑戦してみたい性格から多趣味なのですが、その中でも一番新しい趣味の一つに  
祭りで神輿を担ぐ、というものがあります。  
以前より興味はあったものの参加方法がわからず、今は前職の先輩に紹介していただき参加しています。  
担ぎ手になるには元々参加している方に紹介してもらう、という形が一般的で  
興味はあるけれどどこに問い合わせればいいのかわからない、という方がいらっしゃるかと思います。

一方で関係者側を見た時に、祭りの準備や練習などを考えた場合、今よりもより多くのメンバーに  
参加してもらいたいと考えているケースが多いと感じました。しかし祭りや神輿は神社が主体となって行われる  
行事が多いため、あまりインターネット上に情報が出回りません。

このアプリケーションを使用することで主催者側は行事の開催を告知することができ、興味がある参加希望者はトピックから  
関係者とやり取りをし祭りに参加する、といった流れが生まれ  
地域の伝統行事である祭りがより賑わえばいいなと思い、今回作成いたしました。

#### ターゲットユーザ
* 祭りに参加し、神輿を担いでみたいと考えている人
* 地域の祭りを告知し、参加者が増えることで行事が盛り上がることを期待する関係者

#### 主な利用シーン
* どこでいつお祭りが行われているかの情報を知りたい時
* 祭りの開催を告知したい時

## URL
**http://mikoshi-majesty.com/**

ゲストログイン機能を実装していますので、登録なしでPFをご確認いただけます。

### 主要機能
* Gem deviseを利用したメールアドレス、パスワードによるログイン機能
* GoogleMap APIを利用した地図を用いたイベントの表示
* イベントの投稿、編集、削除機能
* イベントに対するいいね機能、コメント機能、参加機能
* 管理者機能
* 検索機能

## 開発環境
* OS：Linux(Amazon Linux 2023)
* 言語：HTML ,CSS ,JavaScript ,Ruby ,SQL
* フレームワーク：Ruby on Rails
* JSライブラリ：jQuery
* IDE：Cloud9
### ER図
![ER図](https://github.com/area6080/Mikoshi_kai/blob/feature-readme/app/assets/images/ER_view.jpg)
### 使用技術
* フロントエンド：　HTML/CSS　,Javascript
* バックエンド：　Ruby 3.1.2　,Rails 6.1.7　
* テストツール：　RSpec
* コード修正ツール：　Rubocop
* CI/CD：　GitHub Actions
* インフラ：　AWS(EC2,RDS MySQL,) ,NGINX ,PUMA


## 使用素材
* 著作権を考慮し、架空のデータを扱っています。
* フリーイラスト素材として以下を使用しております。
* いらすとや(https://www.irasutoya.com/)
