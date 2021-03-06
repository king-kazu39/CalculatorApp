# テスト結果
#### ※今回は手動テストのみ行っている

#### テスト条件  
##### 画面：計算結果表示窓 + 入力ボタン  
##### ボタンの種類：  
- 数字： 1, 2, 3, 4, 5, 6, 7, 8, 9, 0
- 四則演算子記号： +, -, ÷, ×, =
- その他記号： C(クリア)
##### iPhone Simulator: iPhone 13

| No | テスト対象 | テスト内容 | 期待できる結果 | 実際のテスト結果* | 備考 |
| --- | --- | --- | --- | --- | --- |
| 1 | 数字ボタン | 何も入力してない状態から数字ボタンを1回押した時 | 数字が1桁表示される | OK | |
| 2 | 〃 | 何も入力してない状態から数字ボタンを複数回押した時 | 数字が複数桁表示される(9桁まで表示) | OK | |
| 3 | 四則演算子記号ボタン | 何も入力してない状態から四則演算子記号ボタンを1回押した時 | 何も起きない | OK | |
| 4 | 数字とその他記号(C:クリア) | 数字入力からCボタンを押した時(例:2->C) | 2->0と表示が変わる | OK | |
| 5 | 〃 | 何も入力してない状態から四則演算子記号ボタンを複数回押した時 | 〃 | OK | |
| 6 | 数字ボタンと四則演算子記号ボタン | 数字, 演算子記号(=意外), 数字, =(イコール) (例：1+1=) | 数字(計算した数, 例の答えなら2) | OK | 加算以外も同様の結果 |
| 7 | 〃 | 数字, 演算子記号(=以外), 数字, 演算子記号(=意外), =(イコール) (例：1+1+1=) |数字(計算した数, 例の答えなら3) | OK | 〃 |
| 8 | 〃 | 数字, 演算子記号(=以外), =(イコール) (例：1+=) | 数字(計算した数, 例の答えなら2) | NG | 〃 |
| 9 | 〃 | 数字, 演算子記号(=以外), 数字, 演算子記号(=意外),... (例：1+1+1...) | 数字(計算した数, 例の答えなら1->2->3) | OK | 単一の演算子記号のみ使用. |
| 10 | 〃 | 数字, 演算子記号(=以外), 数字, 演算子記号(=意外),... (例：1+1-1×...) | 数字(計算した数, 例の答えなら1->2->1) | NG | 複数の演算子記号を使用。2回目以降の計算から演算子記号を入力した時の結果になり、計算結果にズレがある |

*OK:期待通り, NG:期待通りの結果でない