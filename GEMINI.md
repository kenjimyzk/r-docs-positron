# GEMINI.md

このファイルは、プロジェクトの進捗状況とGemini（私）へのガイダンスをまとめたものです。

## プロジェクト概要
このリポジトリは、統計分析と回帰手法を教えるための日本語Rチュートリアル（Quartoドキュメント）です。

## 現在の進捗状況

### ファイル構成と対応
- **01stat.qmd**: Rの基礎、単回帰分析など（Chapter 1相当？）。
- **02reg.qmd**: 重回帰分析、ダミー変数、頑健な標準誤差など。
  - コード内で `income6` (`6_1_income.csv`) を使用しており、**Chapter 6** の内容を含んでいると推測されます。
- **03iv.qmd**: 操作変数法（IV法）。
  - `8_example_8_2.R` と `8_income.csv` を使用。**Chapter 8** 相当。
- **データセット**:
  - `6_1_income.csv`: Chapter 6用
  - `7_1_income.csv`: Chapter 7用（対応するqmdファイルがルートに見当たりません）

### 最近の作業履歴（コンテキスト）
1.  **03iv.qmd (Chapter 8) の作成**:
    - `8_example_8_2.R` と `8_income.csv` を元に作成。
    - HTML出力結果に基づき、OLSとIVの推定値比較（能力バイアスの解釈）を追記完了。
2.  **Chapter 7 (AI and Databot) の更新**:
    - Positron AssistantとDatabotに関する内容 (`chapter7_ai_and_databot.qmd`)。
    - 現状、このファイルはルートディレクトリに存在しません。
3.  **図表の更新 (Chapter 4, 5, 6, 9)**:
    - スクリーンショットや図の追加作業。
4.  **Positron IDE 記事作成**:
    - Positron IDEの紹介記事作成。

## 次のステップ
- `chapter7_ai_and_databot.qmd` の作成または復元。
- `7_1_income.csv` を使用した解析内容の統合。
- 各チャプターの図表更新の完了確認。

## 技術スタック
- **Quarto**: `.qmd` ファイルから HTML/PDF/DOCX を生成。
- **PDF生成**: LuaLaTeX + `ltjsarticle` (日本語対応)。
- **R Packages**: `lmtest`, `sandwich`, `estimatr` 等。
