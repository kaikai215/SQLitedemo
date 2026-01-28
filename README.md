# SQLitedemo（iOS + SQLite.swift）

這是一個簡單的 iOS（UIKit）範例專案：使用 [SQLite.swift] 讀取 app bundle 內的 `Demo.sqlite`，從 `City` 資料表查詢城市名稱，並顯示在 `UITableView`。

## 功能

- 以 SQLite.swift 連線到 SQLite 資料庫（`Demo.sqlite`）
- 執行 SQL：`SELECT name FROM City ORDER BY id`
- 將查詢結果呈現在列表


## 專案重點檔案

- `SQLitedemo/SqliteHelper.swift`
  - `DemoDB.getDbPath()`：取得 bundle 內 `Demo.sqlite` 的路徑
  - `DemoDB.getCityList()`：查詢 `City` 表並回傳 `[String]`
- `SQLitedemo/ViewController.swift`
  - `viewDidLoad()` 時呼叫 `DemoDB.getCityList()` 並刷新 `tableView`
- `SQLitedemo/Demo.sqlite`
  - 範例資料庫檔（放在 app bundle 裡）

## 資料庫與資料表

目前程式碼預期資料庫內存在 `City` 資料表，且至少有 `id` 與 `name` 欄位，查詢語句如下：

```sql
SELECT name FROM City ORDER BY id
```

若你替換 `Demo.sqlite`，請確保資料表/欄位名稱一致，或同步修改 `SQLitedemo/SqliteHelper.swift` 內的 SQL。

## 授權

此專案為示範用途；若你要加上授權條款，建議另外新增 `LICENSE`。

