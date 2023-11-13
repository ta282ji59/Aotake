from dataclasses import dataclass
from dataclasses_json import dataclass_json

# クラス定義
@dataclass
class Todo:
    # インスタンス
    id: str
    title: str
    number: int
