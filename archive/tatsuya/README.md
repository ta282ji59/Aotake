# Google Places APIデータ取得スクリプト

このプロジェクトは、Google Places APIを使用して指定したキーワードと地域に関連する場所情報を取得し、それをCSVファイルに保存するPythonスクリプトです。

## 環境構築

### 1. Python環境のセットアップ

このスクリプトを実行するために、Python環境をセットアップする必要があります。

1. Pythonをインストールしていない場合は、[Pythonの公式ウェブサイト](https://www.python.org/downloads/)からインストーラーをダウンロードし、インストールしてください。

2. このリポジトリをクローンまたはダウンロードして、ローカルのコンピュータに保存します。

3. コマンドライン（ターミナルまたはコマンドプロンプト）を開いて、プロジェクトのディレクトリに移動します。

### 2. 必要なライブラリのインストール

スクリプトを実行するには、いくつかのPythonライブラリが必要です。以下のコマンドを使用して、必要なライブラリをインストールしてください。

```bash
pip install requests pandas
```
### 3. Google Cloud PlatformでAPIキーを作成
Google Places APIを使用するために、Google Cloud PlatformでAPIキーを作成する必要があります。

1.[Google Cloud Console](https://chat.openai.com/c/97218eb3-6a9f-4072-b829-9a986fdadb5e#:~:text=%E3%81%8C%E3%81%82%E3%82%8A%E3%81%BE%E3%81%99.-,Google%20Cloud%20Console,-%E3%81%AB%E3%82%A2%E3%82%AF%E3%82%BB%E3%82%B9%E3%81%97)にアクセスし、新しいプロジェクトを作成します。

2.プロジェクトを選択し、「APIとサービス」>「ダッシュボード」に移動します。

3.「APIを有効にする」をクリックし、Google Places APIを検索し、有効化します。

4.「認証情報」タブに移動し、新しいAPIキーを作成します。

5.作成したAPIキーをコピーし、スクリプトの api_key 変数に貼り付けます。

### 4. スクリプトの実行
1.スクリプトを実行して、場所情報を取得しCSVファイルに保存します.

2.コマンドラインでプロジェクトのディレクトリに移動します.

3.以下のコマンドを実行してスクリプトを実行します.
```bash
python script.py
```
4.スクリプトはキーワードと地域を尋ねるプロンプトを表示し、それを入力します.

5.実行が完了すると、CSVファイルがカレントディレクトリに保存されます.

<br><br><br><br><br><br>
<hr>
※README作成者(ChatGPT)

