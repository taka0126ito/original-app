# README

# アプリ名

training diary

# 概要

ユーザーの新規登録、ログインを実装しました。ログイン後は当日に行ったトレーニング内容を記入、保存ができます。
保存した内容は、一覧にアクセスすることでに左上から順に表示できます。


# 本番環境

https://original-app-36424.herokuapp.com/

ログイン情報(テスト用)
・Eメール ti1016013@gmail.com
・パスワード ti1016013

# 制作背景

制作の目的は、トレーニングを継続する人が一人でも増えて欲しい事と、アプリを作成することで
自分自身が使用し、トレーニングを継続できるのではと思い作成しました。

男女問わず健康思考が上昇している現代で、トレーニングの重要性が高まってきていると感じています。
そんな中、多数の人が継続できずに途中で断念してしまうケースが多いと思います。
自分自身その経験を何度も経験しており、その原因を追求した所大きく二つあります。

一つは、一人でトレーニングを続けようとする事です。
一人で継続しようとしてもどこかで妥協してしまい、そこからまた頑張り直すのはとても難しいと思います。
周りに人がいれば一番良いですが、社会人になると時間も合わないことが多いので、コミュニティサイトなどがあれば
継続できる可能性が上がると感じています。

もう一つは、成長を感じられずに断念してしまうことです。
成長を感じる方法は、体重の管理や写真等でボディチェックをするのが一番だと思っていますが、トレーニング始めで
自分の体に自信を持っている人は少なく、写真を撮ってもSNS等で情報発信するのは恥ずかしいと思います。

今回のアプリ実装は主に二つ目の部分にフォーカスしています。
保存した情報はトップページに表示はされず、一覧のリンクから過去のトレーニング内容と保存した画像を閲覧することが出来ます。

画像の投稿により継続している実感が湧くとともに、他の人には見られないので誰でも気軽にスタートできる仕様になっています。
トップページ下にはツイッターのリンクも貼っているので、自信が出てきたら投稿場所を増やしていくことも出来ます。
モチベーションが上がらない時は、youtubeのリンクを貼っているので音楽を流すことも出来ます。


# 工夫したポイント

新規登録画面をウィザード形式にしました。二つのページに分けて入力することで、対話形式での登録が可能となっています。
制作背景にも挙げましたが、、保存した情報一覧をトップページでは閲覧不可にしており、一覧のリンクにアクセスすることでことで全て閲覧可能となります。


# 開発環境
Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code 


# 課題や今後実装したい機能
1.コミュニティの場にしたいので、コメント機能を実装したいです。
2.体重の増減をグラフ化して、より目に見えて結果がわかりやすいように実装したいです。
3.一度の入力項目を増やしたいです。


# DB設計

### userテーブル


| Column                |Type          | Options     |
|----------------------------------------------------|
| email                 |string        | null:false, unique:true |
| encrypted_password    |string        | null:false  |
| nickname              |string        | null:false  |
| weight                |string        | null:false  |
| age                   |date          | null:false  |


### Association
has_one :potential



### potentialテーブル

| Column                |Type          | Options     |
|----------------------------------------------------|
| bench_press           |string        | null:false  |
| squat                 |string        | null:false  |
| deadlift              |string        | null:false  |
| user_id               |references        | null:false, foreign key:true  |

### Association

belongs_to :user


### mainテーブル

| Column                |Type          | Options     |
|----------------------------------------------------|
| run                |string        | null:false, unique:true |
| bench_press        |string        | null:false  |
| squat              |string        | null:false  |
| deadlift           |string        | null:false  |
| abdominal_muscle   |string        | null:false  |
| suspension         |string        | null:false  |
| others             |string        | null:false  |
| user_id            |references    | null:false, foreign key:true  |




### Association

belongs_to :user
