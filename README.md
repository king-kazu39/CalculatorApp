# CalculatorApp
# アプリイメージ
![スクリーンショット 2022-01-05 15 48 14](https://user-images.githubusercontent.com/25321380/148172991-bd0d657f-3b49-47ec-a8f8-125c970b410b.png)

# 開発時環境
| IDE | Xcode 13.2.1 |
| --- | --- |
| プログラミング言語 | Swift/SwiftUI |
| CI/CD | Github Actions※ |

※SwiftLintで構文チェックなど静的解析をし,ビルドが通ることを確認している。  
自動テストは今回行ってない。  
Github Actionsワークフローの実行時間を短くするため  
iPhone Simulator iPhone 13のみビルドターゲットにしている


# 機能
- 自然数同士の四則演算とクリアのみ

# アプリ制作時に注力した点
- atomic designを意識し、UI部品をできるだけコンポーネント化する
- Unitテスト、自動テストをしながらコード改善をしていく(今回できなかった)