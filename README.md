# テーブル設計

## Users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| id                 |        |             |
| email              | string | null: false |
| encrypted_password | string | null: false |
| nickname           | string | null: false |
| gender             | string | null:false  |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_kana          | string | null: false |
| first_kana         | string | null: false |
| birthday           | date   | null: false |

### Association

- has_one:profile
- has_many:message
- has_many:buy
- has_one:kotoba_wallet

## Profiles テーブル

| Column | Type       | Options          |
| ------ | ---------- | ---------------- |
| id     |            |                  |
| user   | references | foreign_key:true |
|        | text       |                  |
|        | string     |                  |
|        | string     |                  |
|        | integer    |                  |

### Association

- belongs_to:user

## Kotoba_wallets テーブル

| Column         | Type       | Options          |
| -------------- | ---------- | ---------------- |
| id             |            |                  |
| user           | references | foreign_key:true |
| Stock_quantity | integer    | null: false      |

### Association

- belongs_to:user
- has_one:transaction
- has_many:buy
- has_many:purchase

## Transactions テーブル

| Column           | Type       | Options          |
| ---------------- | ---------- | ---------------- |
| id               |            |                  |
| kotoba_wallet_id | references | foreign_key:true |
| plus_kotoba      | integer    |                  |
| minus_kotoba     | integer    |                  |

### Association

- belongs_to:kotoba_wallet
- has_many:purchase
- has_many:buy

## Purchases テーブル

| Column           | Type       | Options          |
| ---------------- | ---------- | ---------------- |
| id               |            |                  |
| transaction_id   | references | foreign_key:true |
| kotoba_wallet_id | references | foreign_key:true |
| quantity         | integer    |                  |

### Association

- belongs_to:kotoba_wallet
- belongs_to:transaction

## Buys テーブル

| Column           | Type       | Options          |
| ---------------- | ---------- | ---------------- |
| id               |            |                  |
| kotoba_wallet_id | references | foreign_key:true |
| transaction_id   | references | foreign_key:true |
| giver_id         | references |                  |
| taker_id         | references |                  |
| quantity         | integer    |                  |
| unit_price       | integer    |                  |
| total_price      | integer    |                  |

### Association

- has_one:message
- belongs_to:user
- belongs_to:kotoba_wallet
- belongs_to:transaction

## Messages テーブル

| Column   | Type       | Options          |
| -------- | ---------- | ---------------- |
| id       |            |                  |
| buy_id   | references | foreign_key:true |
| giver_id | references |                  |
| taker_id | references |                  |
| message  | text       | null:false       |

### Association

- belongs_to:buy
- belongs_to:user
