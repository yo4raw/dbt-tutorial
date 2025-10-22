---
title: "dbtの基礎"
---

### 初期化コマンド

```bash
dbt init yoshioka
```
を実行してみましょう。



### dbt_project.yml

一番最初に確認すべきdbt_project.ymlについて

/assets/dbt_project.ymlを/dbt_project.ymlに移動させましょう。

中身の解説。

下記も見てみましょう。

https://github.com/dbt-labs/dbt-starter-project/blob/main/dbt_project.yml

まだ存在しないDirを作成します。

```bash
mkdir models analysis tests macros snapshots target
```


###　.dbt/profiles.yml

/assets/profiles.ymlを/.dbt/profile.ymlに移動させましょう。

中身の解説。


### seedsの読み込み

```bash
dbt seed --full-refresh --vars '{"load_source_data": true}'
```

これを実行してduckdbに取り込まれたかを確認。


## 覚えてほしい基本コマンド

まず覚えていただきたいコマンドは下記の３つです

```bash
dbt debug
dbt run
dbt seed
```
