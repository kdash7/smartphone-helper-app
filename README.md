# Smartphone Helper App（スマホお困りごと診断）

スマートフォン利用中によくある「困りごと」を選択式で診断し、  
回答内容に応じたアドバイスを表示する Web アプリです。  

Java / Servlet / JSP を用いて、  
**条件分岐ロジック・画面制御・スマホ向けUI設計**を意識して実装しました。

---

## 🌐 公開URL

https://smartphone-helper-app.onrender.com

---

## アプリ概要

- スマホ利用時の代表的な「困りごと」を診断
- 質問形式で回答を進めると、状況に応じた結果を表示
- JavaScript を使い、回答内容に応じて質問を動的に切り替え
- スマートフォン表示を重視した UI 設計

---

## 使用技術

### 言語・フレームワーク
- Java 17
- Servlet / JSP
- JavaScript

### 開発環境・ツール
- Eclipse（Pleiades）
- Apache Tomcat 10.x
- Maven
- Git / GitHub
- Render（デプロイ）

---

## 主な機能

- 困りごとの選択（5種類）
  - バッテリー持ちが悪い
  - データ容量がいっぱい
  - 通信速度が遅い
  - 月額料金が高い
  - セキュリティが不安
- 回答内容に応じた質問分岐
- 条件に応じた診断結果の表示
- スマホ表示に最適化されたレスポンシブUI

---

## 画面構成

- index.jsp  
  困りごと選択画面

- question.jsp  
  質問表示画面（JavaScript により質問を動的に制御）

- result.jsp  
  診断結果表示画面

---

## ディレクトリ構成（抜粋）

SmartphoneHelperApp  
├─ src  
│ └─ main  
│ ├─ java  
│ │ └─ smartphoneHelperApp  
│ │ ├─ MainServlet.java  
│ │ └─ ResultServlet.java  
│ └─ webapp  
│ ├─ index.jsp  
│ ├─ question.jsp  
│ ├─ result.jsp  
│ └─ style.css  
└─ pom.xml  

---

## 起動方法（ローカル実行）

### 前提環境
- Java 17
- Eclipse（Pleiades）
- Apache Tomcat 10.x
- Maven

### 起動手順

1. このリポジトリをクローンします。
   ```bash
   git clone https://github.com/kdash7/smartphone-helper-app.git

2．Eclipse で「既存の Maven プロジェクト」としてインポートします。

3．Tomcat 10.x をサーバーとして設定し、プロジェクトを追加します。

4．Eclipse からサーバーを起動します。

5．ブラウザで以下にアクセスします。  
   http://localhost:8080/SmartphoneHelperApp/

---

## 工夫した点・学んだこと

- 質問分岐ロジックの設計
  - 回答内容によって次の質問・結果を切り替える制御を実装
  - Servlet 側での条件分岐と、JSP 側の表示制御の役割分担
- JavaScript を使った画面制御
  - 回答内容に応じて質問の表示・非表示を切り替え
  - required 属性を動的に付け替え、入力エラーを防止
- スマホ向け UI 設計
  - 文字サイズ・ボタンサイズを大きめに調整
  - PC / スマホで表示を切り替えるレスポンシブ対応
- Maven + Render を使ったデプロイ経験
  - war ファイル生成
  - Docker + Tomcat 環境での公開

### 補足

本アプリは学習目的で作成したものです。
面接時には、
- 条件分岐の考え方
- 質問設計の意図
- スマホ向けUIで工夫した点

について説明できる構成を意識しています。
