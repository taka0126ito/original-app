# README

## userテーブル


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


## mainテーブル

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
