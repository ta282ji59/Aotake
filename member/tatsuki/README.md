# データベースからJSON形式でデータを取得するアプリケーション

PostgreSQLにあるデータをPythonのフレームワーク"Bottle"を用いて、JSON形式で取得する

## インストール

1. 必要なもの
   VScode
   Python
   PostgreSQL

3. インストールパッケージ
    ```bash
    pip install bottle
    pip install psycopg2
    pip install dataclasses
    pip install dataclasses-json
    ```

## 使用法

1. 起動

    ```bash
    python index.py
    ```
    またはVScodeでindex.pyファイルを開き、F5キーを押す

2. ブラウザで `http://localhost:8080` にアクセス
   この時点では404になるので以下を追加する。
   `http://localhost:8080/hello`→"Hello world!"が表示される。
   `http://localhost:8080/todos`→データベースから取得したデータがJSON形式で記述されたファイルとしてダウンロードされる。
   
   

## 参考
【Python】0からWebアプリ！ハンズオン(3)～API実装編～https://qiita.com/tsumasakky/items/0aed1f2bd0b983e6d8ec
【Python】0からWebアプリ！ハンズオン(4)～データ成形編～https://qiita.com/tsumasakky/items/8c1b10482c4b312da19c
  

