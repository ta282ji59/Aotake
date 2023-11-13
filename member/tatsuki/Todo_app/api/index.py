# 外部のパッケージを読み込む
from bottle import route, run, response
import psycopg2 # postgres接続用のドライバ
import json
from Todo import Todo

# データベースへの接続を取得
def get_connection():
    try:
        return psycopg2.connect("host=localhost port=5432 dbname=TodoDatabase user=postgres password=postgres")
    except Exception as e:
        print(f"Error connecting to the database: {e}")
        return None

# @routeに/helloと設定すると、http://localhost:8080/helloでアクセスできる
@route('/hello')
def hello():
    # Hello World!という文字列を返却
    return "Hello World!"

@route('/todos')
def get_todos():
    # レスポンスのデータ形式をjsonに変更
    response.headers['Content-Type'] = 'applocation/json'
    response.headers['Cache-Control'] = 'no-cache'
    conn = get_connection()
    try:
        if conn is None:
            return "Error: Unable to establish database connection."

        with conn.cursor() as cur:
            # SQLを実行
            cur.execute('SELECT * FROM todo')
            # データベースへの問い合わせ結果を全て取得
            data = cur.fetchall()

            todos = []
            for row in data:
                todo = Todo(row[0], row[1], row[2])
                todos.append(todo)
            
            # DBから取得したデータを文字列に変換して返却
            return json.dumps([t.__dict__ for t in todos], ensure_ascii=False)
    except Exception as e:
        return f"Error: {e}"
    finally:
        if conn:
            conn.close()

# Webサーバーの実行構成
# URLの "http://[host]:[port]/[route]" の構成となる
run(host='localhost', port=8080, debug=True)
