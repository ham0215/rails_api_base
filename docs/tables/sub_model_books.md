# sub_model_books

## Description

<details>
<summary><strong>Table Definition</strong></summary>

```sql
CREATE TABLE `sub_model_books` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sub_model_user_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_model_user_id` (`sub_model_user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `sub_model_user_id_on_sub_model_users` FOREIGN KEY (`sub_model_user_id`) REFERENCES `sub_model_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_on_sub_model_users` FOREIGN KEY (`user_id`) REFERENCES `sub_model_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
```

</details>

## Columns

| Name | Type | Default | Nullable | Extra Definition | Children | Parents | Comment |
| ---- | ---- | ------- | -------- | ---------------- | -------- | ------- | ------- |
| id | bigint |  | false | auto_increment |  |  |  |
| sub_model_user_id | bigint |  | false |  |  | [sub_model_users](sub_model_users.md) |  |
| user_id | bigint |  | false |  |  | [sub_model_users](sub_model_users.md) |  |
| created_at | datetime(6) |  | false |  |  |  |  |
| updated_at | datetime(6) |  | false |  |  |  |  |

## Constraints

| Name | Type | Definition |
| ---- | ---- | ---------- |
| PRIMARY | PRIMARY KEY | PRIMARY KEY (id) |
| sub_model_user_id_on_sub_model_users | FOREIGN KEY | FOREIGN KEY (sub_model_user_id) REFERENCES sub_model_users (id) |
| user_id_on_sub_model_users | FOREIGN KEY | FOREIGN KEY (user_id) REFERENCES sub_model_users (id) |

## Indexes

| Name | Definition |
| ---- | ---------- |
| sub_model_user_id | KEY sub_model_user_id (sub_model_user_id) USING BTREE |
| user_id | KEY user_id (user_id) USING BTREE |
| PRIMARY | PRIMARY KEY (id) USING BTREE |

## Relations

![er](sub_model_books.svg)

---

> Generated by [tbls](https://github.com/k1LoW/tbls)