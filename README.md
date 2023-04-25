# アプリケーション名
Five Level Tagging　(5段階タグ付けアプリ)  
<br>

# アプリケーション概要
(1)リストの各項目(アイテム)に最大4種の「特徴タグ」と「5段階スコア」を登録することで、特徴の数値化・一覧化ができる。  
(2)他ユーザーの作ったリストやアイテム(タグ・スコア)も含め、並び替え・検索ができる。  
<br>

## アプリケーションの使用例
(1)音楽・書籍・映像など各種作品の、評価項目と評価値をリスト化する。  
　「泣ける:1」「怖い:5」の映画など。  
<br>
(2)献立ストックリストを検索。献立の組み合わせを考えやすくする。  
　「甘さ:3」「食べ応え:2」のプリンと、「塩味:2」「食べ応え:3」の厚焼きせんべい。  
<br>
(3)行事ストックリストを作成。実施難易度の高さで5段階数値化。行事の実施時期・順番を考えやすくする。  
　「よける:2」「協力:1」「危険性:2」のチーム鬼ごっこで、簡単な運動遊び・協力遊びを4月に企画する。  
　「よける:3」「協力:3」「危険性:3」のドッジボールは、身体能力や協調性の成長を見計らって、7月を目安に企画する。  
<br>

## アプリケーションを作成した背景
　保育士時代、過去の献立や行事を参照したい時、毎月の献立表や個別の行事報告書を何枚もめくって探すような、アナログな環境だった。  
　改善策として、エクセルで記録を一覧化し、蓄積・検索しやすくした。  
　献立や行事の特徴と程度(タグとスコア)も簡潔に記録することで、「体験」の組み合わせや順番に意図を込めて計画しやすくなった。  
　便宜的・簡易的な数値化により、抽象的・曖昧な事柄についても、特徴の把握・比較と選択がしやすくなった。  
　ただし、当時はあくまでイチ施設内で完結する記録であった。  
<br>
　今回、アプリ化して公開することで、メリットをさらに発展させられると考えた。  
　他ユーザーの作ったリストやアイテム(タグ・スコア)も参照できるようになる。  
　異なる他者の経験・アイディア・価値尺度に出会い、刺激やヒントを得られる。  
　公開リストなら見知らぬ人と、限定公開リストなら企業内やチーム内で、共同編集も可能になる。  
　今回はリスト・タグのジャンルを限定しないことで、様々な業務あるいは趣味の記録にも対応可能性を広げた。  
　(仮に大規模市場または特定業界向けで運用するなら、ジャンル別のUIやDBでアプリを独立させた方が実用的か。)  
<br>

# 実装予定の機能
### 1. リストの投稿
(1)トップページ(＝リスト一覧ページ)にアクセスする。ヘッダーからユーザー登録・ログインする。  
(2)リスト新規投稿をクリックする。  
(3)リストのタイトル・コンセプト・数値化ルールを入力して投稿する。  
　※数値化ルールには、スコア1~5それぞれの段階・程度を表す言葉や代表例などの記載を推奨。  
<br>

### 2. アイテム(リスト内の各項目)・タグ・スコアの投稿
(1)リスト一覧ページで、自作のリストタイトル(リスト詳細ページ)をクリックする。  
(2)リスト詳細ページで、アイテム新規投稿をクリックする。  
(3)アイテムの項目名・説明・タグ・スコアを入力し、画像を添付して投稿する。  
　※タグとスコアは最大4組入力できる。タグのみの保存はできるが、タグに紐づかないスコアのみの保存はできない。  
<br>

### 3. リスト一覧・アイテム一覧の並び替え
(1)リスト一覧ページの並び替えボタン3種をクリックするたびに、昇順・降順を切り替える(投稿日時・タイトル・作者名)。  
(2)アイテム一覧ページ(＝リスト詳細ページ)の並び替えボタン3種をクリックするたびに、昇順・降順を切り替える(投稿日時・項目名)。  
　※アイテムに紐づくタグ・スコアも、アイテムごと並び換えられる。  
<br>

### 4. ユーザー詳細ページの表示
<br>

### 5. リスト・アイテムの検索
<br>

### 6. タグの検索
<br>

### 7. ユーザーのフォロー
<br>

### 8. リストのマイリスト登録
<br>

### 9. 全体公開リスト・限定公開リストの選択投稿
<br>

### 10. アイテムの画像拡大
<br>

### 11. CSSの装飾
<br>

### 12. 使い方ガイドの表示ボタン(非同期通信)
<br>
<br>

# 要件定義
[スプレッドシートへのリンク](https://docs.google.com/spreadsheets/d/10B7zKWsc7uPWMbjWP8jSZ0URIDiKXv5PVb-Rytln0PM/edit#gid=219665282)  
<br>

# データベース設計
![画像：ER図](app/assets/images/ER.png)
<br>
<br>

# 画面遷移図
![画像：画面遷移図](app/assets/images/PageTransition.png)
<br>
<br>

# 開発環境
HTML・CSS・Ruby・JavaScript・SQL・AWS  
<br>
