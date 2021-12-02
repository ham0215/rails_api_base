# Queries

### About queries



### profile

#### Type: [User!](objects.md#user)

プロフィールを取得する 

#### Arguments

| Name | Description |
|------|-------------|
| userId ([Int!](scalars.md#int)) |  |

---

### users

#### Type: [UserConnection!](objects.md#userconnection)

ユーザー一覧を取得する 

#### Arguments

| Name | Description |
|------|-------------|
| after ([String](scalars.md#string)) | <p>Returns the elements in the list that come after the specified cursor.</p> |
| before ([String](scalars.md#string)) | <p>Returns the elements in the list that come before the specified cursor.</p> |
| first ([Int](scalars.md#int)) | <p>Returns the first <em>n</em> elements from the list.</p> |
| last ([Int](scalars.md#int)) | <p>Returns the last <em>n</em> elements from the list.</p> |

---

### viewer

#### Type: [User!](objects.md#user)

ログインユーザーを取得する 

---