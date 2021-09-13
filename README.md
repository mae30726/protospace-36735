# テーブル設計

## usersテーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association

- has_many :prototypes
- has_many :comments


## commentsテーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| text      | text       | null: false |
| user      | references |             |
| prototype | references |             |

### Association

- belongs_to :users
- belongs_to :prototypes


## prototypesテーブル

| Column     | Type      | Options     |
| ---------- | ------    | ----------- |
| title      | string    |             |
| catch_copy | text      |             |
| concept    | text      |             |
| image      |           |             |
| user       | reference |             |

### Association

- belongs_to :users
- has_many :comments