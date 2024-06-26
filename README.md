　※記載内容および画像は、全て開発中のもの。CSSによるレイアウト装飾(配色・フォントなど)は、一通りの機能実装後に着手する予定。  
<br>
<br>

# [ 1 ] アプリケーションの概要
## 1-1. アプリ名称
　Five Level Tagging 【5段階タグ付けアプリ】  
<br>
<br>

## 1-2. 本番環境URL
　http://3.115.163.111/  
<br>
<br>

## 1-3. テスト用アカウント
　(1)企業風アカウント：user1　メールアドレス：aaaa@jp　パスワード：1aaaaaa8  
<br>
　(2)個人風アカウント：user2　メールアドレス：bbbb@jp　パスワード：2bbbbbb8  
<br>
　※Basic認証(ID/Pass)：履歴書・職務経歴書に記載。  
<br>
　※テスト用アカウントにログインして閲覧する皆様へ  
　既存データ(サンプルデータ)の編集・削除はご遠慮ください。(user1〜2, list1〜6, item1〜72)  
　新規データの投稿・編集・削除は問題ございません。データベースリセットの目安：平日22時頃  
<br>
<br>

## 1-4. アプリ使用方法の概要
### 1-4-1. リスト(アイテム一覧表)を投稿し、各アイテムにタグと5段階スコアを設定する
　(1)ユーザーが自由に決めたテーマに基づき、記録・発信したい情報を投稿できる(企業の業務や、個人の趣味)。  
　情報を一覧化するページとして「リスト」を投稿する。リスト内の個々の項目として「アイテム」を投稿する。  
<br>
　(2)アイテムの特徴を示すキーワードとして「タグ」を投稿する。アイテム1つにつき、最大4つ。  
　タグの程度や段階を示す数値として、「1」〜「5」の「スコア」を投稿する。  
　これにより、アイテムが持つ特徴を5段階の数値で表現し、データベース化できる。  
<br>
　(3)自作リスト内のアイテム同士の表示位置を入れ替え、任意の表示順番を保存する(ドラッグ＆ドロップ)。  
　他ユーザーの閲覧時も、作者指定順でアイテム一覧表を表示できる。  
<br>
　(4)自作リストの権限を設定する。閲覧可能なユーザーや、共同編集可能なユーザーを指定できる。  
<br>
<br>

### 1-4-2. リストやユーザーを検索・閲覧する
　(1)リスト(詳細ページ)へのアクセス機能：リスト一覧、キーワード検索、タグ検索、マイリストなど。  
　ユーザー一覧やフォロー一覧からは、各ユーザーが更新した最新リストにアクセスできる。  
<br>
　(2)ユーザー(詳細ページ)へのアクセス機能：ユーザー一覧、フォロー一覧、リスト一覧(各リストの作者名)など。  
<br>
　(3)ユーザーやリストやアイテムの一覧表をソートする。更新日時順、五十音順、スコア順、作者指定順など。  
<br>
<br>

## 1-5. アプリ活用例
　(1)音楽・書籍・映像など、鑑賞作品の評価項目と評価値をリスト化する。  
　「感動:1」「怖い:5」の映画  
<br>
　(2)食品リストを検索。おやつ献立の組み合わせを考えやすくする。満腹感のスコア合計6を目安にした場合↓  
　「満腹感:1」ミニゼリー＋「満腹感:2」薄焼きせんべい＋「満腹感:3」カットバウム  
　「満腹感:2」薄焼きせんべい＋「満腹感:4」カットロールケーキ  
　「満腹感:1」ミニゼリー＋「満腹感:5」肉まん  
<br>
　(3)小学生低学年向けの運動遊び計画を作成。難易度を数値化。運動遊びの実施時期・順番を考えやすくする。  
　「走る:1」ドーンじゃんけん  
　「走る:2」ハンカチ落とし  
　「避ける:1」おしり鬼ごっこ  
　「走る:3」「避ける:2」こおり鬼ごっこ  
　「狙う:1」ボール転がし的当て  
　「狙う:2」「避ける:3」転がしドッジボール  
　「狙う:2」「キャッチ:1」キャッチボール(ドッジ用ボール)  
　「狙う:2」「キャッチ:2」パスリレー(ドッジ用ボール)  
　「狙う:3」「キャッチ:3」アメリカンドッジボール  
　「狙う:4」「避ける:4」外野なしドッジボール  
　「狙う:4」「避ける:5」外野ありドッジボール  
　「走る:3」「狙う:5」「避ける:4」三歩ドッジボール  
<br>
<br>

## 1-6. アプリを作成した背景
### 1-6-1. 業務実績：情報をリスト化・タグ化・数値化し、特徴の把握や比較を効率化した
　(1)保育士時代、献立や活動の記録を手書きで作成してファイリングするのが慣例、という職場を複数経験した。  
　新たな計画を立てる際、過去の献立や活動を参照しつつも、丸被りは避けたい。献立や活動の実施時期や順番、実施の意図や効果・評価を、数年単位で比較したい。数年分の記録を何枚もめくって探し、読み比べていた。  
<br>
　(2)改善策として、PCで記録入力の雛形を作った。献立や活動のデータを一覧化し、検索しやすくした。献立や活動の簡潔な特徴と評価値(タグとスコア)も記録し、共通タグやスコア順での一覧表ソートも可能にした。  
<br>
　(3)便宜的・簡易的な数値化により、本来定量的でない保育活動も、特徴の把握と比較・選択がしやすくなった。  
　保育を通じて児童に提供したい「体験」の組み合わせや順番に、意図を込めて計画しやすくなった。  
　経験知を蓄積・共有し、職員が異動しても継承しやすくなった。ただし、あくまで私の職場内で完結していた。  
<br>
<br>

### 1-6-2. アプリ化利点：リストをユーザーが投稿・検索し合い、多様な情報や発想に出会える
　(1)そこで、特徴のタグ・スコア化機能をアプリに落とし込めば、ユーザー間の双方向性を強化できると考えた。  
　検索機能やフォロー機能を使い、他者の投稿したリストを発見できる。リスト作者の考えが反映されたタグやスコアを見て、自分と異なる経験や発想、価値観や価値基準に出会い、刺激やヒントを得るチャンスを増やせる。  
<br>
　(2)さらに、リスト権限設定機能を使い、特定のメンバー内でリストの限定公開や共同編集ができる。企業内やプロジェクトチーム内、コミュニティの仲間内や家族内、あるいはネット上・アプリ上で知り合った人など。  
<br>
　(3)今回はリスト・タグのジャンルを限定しないことで、幅広い業務や趣味の記録に活用できる汎用性を高めた。  
　※特定業界向けに開発する場合は、UIやDB設計を特定のジャンル・ターゲットに寄せた方が実用的だと考える。  
<br>
<br>
<br>

# [ 2 ] アプリケーションの機能
## 2-1. 実装済みの機能
### 2-1-0. ユーザー登録、ログイン、ログアウト
　(0)アプリのトップページにアクセスする。Basic認証のIDとPassを入力すると、アプリを閲覧可能になる。  
<br>
　(1)ヘッダー(全ページで共通)：ユーザー登録／ログインをクリックする。  
　※ログイン中はボタンが変化：ユーザー登録→マイページ／ログイン→ログアウト。  
<br>
http://3.115.163.111/  
![画像：2-1-0(A)feature](app/assets/images/readme/2-1-0(A)feature.png)
<br>
<br>
<br>
　(2)ユーザー登録ページ：Eメール、パスワード、本名、ユーザー名、連絡先、自己紹介を入力して送信する。  
<br>
/users/sign_up  
![画像：2-1-0(B)feature](app/assets/images/readme/2-1-0(B)feature.png)
<br>
<br>
<br>
　(3)ログインページ：Eメール、パスワードを入力して送信する。  
<br>
/users/sign_in  
![画像：2-1-0(C)feature](app/assets/images/readme/2-1-0(C)feature.png)
<br>
<br>
<br>

### 2-1-1. リスト一覧やアイテム一覧の表示・並び替え、表示が省略されたコンテンツの開閉
　(1)ヘッダー：リスト一覧をクリックする。  
　(2)リスト一覧ページ(トップページ)：並び替えボタン(列の見出し)をクリックすると、昇順・降順を切り替えられる(リストタイトル、作者名、リスト更新日時)。  

　(3)長いコンテンツの表示は省略される(コンセプトが6行以上)。開閉ボタン(枠内右下)をクリックすると、表示の展開と折りたたみを切り替えられる。  
<br>
/lists  
![画像：2-1-1(A)feature](app/assets/images/readme/2-1-1(A)feature.png)
<br>
<br>
<br>
　(4)リスト詳細ページ(アイテム一覧)：並び替えボタンをクリックすると、昇順・降順を切り替えられる(作者指定順、アイテム名、アイテム更新日時)。  

　(5)長いコンテンツの表示は省略される(コンセプト・リスト作成ルールが9行以上、アイテム説明が11行以上、画像が3枚以上)。開閉ボタン(枠内右下)をクリックすると、表示の展開と折りたたみを切り替えられる。  
<br>
/lists/1  
![画像：2-1-1(B)feature](app/assets/images/readme/2-1-1(B)feature.png)
<br>
![画像：2-1-1(C)feature](app/assets/images/readme/2-1-1(C)feature.png)
<br>
<br>
<br>

### 2-1-2. リストの投稿
　(1)ヘッダー：ログイン中に、リスト一覧／マイページをクリックする。  
　(2)リスト一覧ページ／マイページ：リスト新規投稿をクリックする。  
　(3)リスト投稿ページ：リストのタイトル、コンセプト、作成ルールを入力して送信する。  
<br>
/lists/new  
![画像：2-1-2(A)feature](app/assets/images/readme/2-1-2(A)feature.png)
<br>
<br>
<br>

### 2-1-3. アイテム(リスト内の各項目)・タグ・スコアの投稿、タグ入力時の逐次検索
　(1)ヘッダー：ログイン中に、リスト一覧／マイページをクリックする。  
　(2)リスト一覧ページ／マイページ：自作のリストタイトルをクリックする。  
　(3)リスト詳細ページ：アイテム新規投稿をクリックする。  
<br>
　(4)アイテム投稿ページ：アイテムの名前、説明、画像(最大4枚)、タグとスコア(最大4組)を入力して送信する。  
　※投稿可能：アイテムのみ。アイテム＋タグ。アイテム＋タグ＋スコア。  
　※投稿不可：タグのみ。スコアのみ。タグ＋スコア。  
<br>
　(5)タグ名に入力した文字が、既存のタグ名と部分一致した場合、タグ名ボタンを表示。クリックして入力する。  
<br>
/lists/1/items/new  
![画像：2-1-3(A)feature](app/assets/images/readme/2-1-3(A)feature.png)
<br>
<br>
<br>

### 2-1-4 自作リストのアイテム一覧：ドラッグ＆ドロップして表示順番を変更・保存
　(1)ヘッダー：ログイン中に、リスト一覧／マイページをクリックする。  
　(2)リスト一覧ページ／マイページ：自作のリストタイトルをクリックする。  
<br>
　(3)リスト詳細ページ：現在の並び替えボタンの表示が「並び替え（作者指定順） ▲」であることを確認する。  
　※他の並び替え方法が指定されている場合、作者指定順ボタンが▲表示(昇順)になるまでクリックする。  
<br>
　(4)アイテム名またはアイテム番号の部分にカーソルを合わせ、ドラッグを開始する。  
　半透明化したアイテムを上下に動かし、他のアイテムの合間にドロップする。  
<br>
　(5)アイテム一覧を任意の順番に入れ替えることで、新たなアイテム番号を保存・表示できる。  
　他のユーザーが閲覧する際も、リスト作者が指定した番号順にアイテム一覧が表示される。  
<br>
/lists/6  
![画像：2-1-4(A)feature](app/assets/images/readme/2-1-4(A)feature.gif)
<br>
<br>
<br>

### 2-1-5. ユーザー一覧(各ユーザーの最新リスト)の表示・並び替え、マイページの表示・編集
　(1)ヘッダー：ユーザー一覧をクリックする。  
　(2)ユーザー一覧ページ：並び替えボタン(列の見出し)をクリックすると、昇順・降順を切り替えられる(ユーザー名、最新リストタイトル、最新リスト更新日時)。  
<br>
　(3)最新リストタイトルをクリックすると、各ユーザーが更新した最新のリスト詳細ページを表示できる。  
<br>
　(4)ユーザー名をクリックすると、ユーザー詳細ページを表示できる。  
　※ヘッダー：ログイン中に、マイページをクリックすると、自身のユーザー詳細ページを表示できる。  
<br>
/users  
![画像：2-1-5(A)feature](app/assets/images/readme/2-1-5(A)feature.png)
<br>
<br>
<br>
　(5)マイページ(自身のユーザー詳細ページ)：ユーザーアカウント編集をクリックする。  
<br>
/users/1  
![画像：2-1-5(B)feature](app/assets/images/readme/2-1-5(B)feature.png)
<br>
<br>
<br>
　(6)ユーザー編集ページ：パスワードは、変更したい時だけ入力する。変更したくない時は空欄のまま送信する。  
<br>
/users/edit  
![画像：2-1-5(C)feature](app/assets/images/readme/2-1-5(C)feature.png)
<br>
<br>
<br>

### 2-1-6. キーワード検索：リストやアイテムの表示・並び替え
　(1)ヘッダー：キーワード検索をクリックする。  
　(2)検索ページ：検索ワードを入力する(部分一致検索)。スペースで区切ると、複数のワードで検索できる。  
<br>
　(3)AND検索ボタンをクリックする。複数ワードを全てを含む条件で検索できる。  
　または、OR検索ボタンをクリックする。複数ワードのいずれかを含む条件で検索できる。  
<br>
　(4)リスト検索ボタンをクリックする。リストのタイトル・コンセプト・ルール、リスト内アイテムの名前・説明、タグの名前、いずれかに検索ワードが含まれていたら、該当するリストを表示できる。  
　または、アイテム検索ボタンをクリックする。アイテムの名前・説明、タグの名前、いずれかに検索ワードが含まれていたら、該当するアイテムを表示できる。  
<br>
　(5)上記(2)〜(4)を入力・選択して送信する。リスト一覧表またはアイテム一覧表を、表示・並び替えできる。  
　※アイテム一覧表の場合、各アイテム内のリストタイトルをクリックすると、リスト詳細ページを表示できる。  
<br>
/search  
![画像：2-1-6(A)feature](app/assets/images/readme/2-1-6(A)feature.png)
<br>
<br>
/search  
![画像：2-1-6(B)feature](app/assets/images/readme/2-1-6(B)feature.png)
<br>
<br>
<br>

### 2-1-7. タグ検索：タグ(およびリスト)を指定してアイテム表示、スコア順にアイテム並び替え
　(1)ヘッダー：タグ検索をクリックする。  
　(2)タグ一覧＋検索ページ：デフォルトでは、投稿済みのタグが全件一覧表示される。  
<br>
　(3)検索ワードを入力して送信した場合、該当するタグを表示できる(部分一致検索、複数ワード検索、OR検索)。  
<br>
　(4)並び替えボタンをクリックすると、昇順・降順を切り替える(タグ名、タグを含むアイテムの最新更新日時)。  
　→最近使われたタグを優先的に表示することもできる。  
<br>
　(5)タグ一覧のタグ名をクリックすると、タグ詳細ページを表示できる。  
<br>
/tags  
![画像：2-1-7(A)feature](app/assets/images/readme/2-1-7(A)feature.png)
<br>
<br>
<br>
　(6)タグ詳細ページ：タグを含むアイテム一覧を、表示・並び替えできる(アイテム名、更新日時、タグスコア)。  
　→特定のタグのスコアを基準にして、アイテムを並び替えることもできる。  
<br>
　(7)リスト番号を入力して送信した場合、指定したリストの中で、かつ、指定したタグが使われているアイテムのみを表示・並び替えできる。  
　※リスト詳細ページで、アイテム一覧のタグ名リンクをクリックした場合、タグ詳細ページへ遷移すると同時に、リスト番号が自動入力される。つまり、リストとタグの指定が1クリックでできる。  
<br>
/tags/111?list_id=6  
![画像：2-1-7(B)feature](app/assets/images/readme/2-1-7(B)feature.png)
<br>
<br>
<br>

## 2-2. 実装予定の機能
### 2-2-8. ユーザーのフォロー、フォロー一覧の表示、フォロー中ユーザーのリスト一覧表示
<br>

### 2-2-9. マイリストにリストを追加して一覧表示
<br>

### 2-2-10. 自作リストのメンバー権限設定：閲覧できるユーザー／共同編集できるユーザー
<br>
<br>
<br>

# [ 3 ] 開発の概要
## 3-1. 要件定義
[リンク：Googleスプレッドシート](https://docs.google.com/spreadsheets/d/10B7zKWsc7uPWMbjWP8jSZ0URIDiKXv5PVb-Rytln0PM/edit?pli=1#gid=219665282)  
<br>
![画像：3-1(A)RequirementDefinition](app/assets/images/readme/3-1(A)RequirementDefinition.png)
<br>
![画像：3-1(B)RequirementDefinition](app/assets/images/readme/3-1(B)RequirementDefinition.png)
<br>
![画像：3-1(C)RequirementDefinition](app/assets/images/readme/3-1(C)RequirementDefinition.png)
<br>
![画像：3-1(D)RequirementDefinition](app/assets/images/readme/3-1(D)RequirementDefinition.png)
<br>
<br>
<br>

## 3-2. データベース設計
EntityRelationship.dio  
![画像：3-2EntityRelationship](app/assets/images/readme/3-2EntityRelationship.png)
<br>
<br>
<br>

## 3-3. 画面遷移図
PageTransition.dio  
![画像：3-3PageTransition](app/assets/images/readme/3-3PageTransition.png)
<br>
<br>
<br>

## 3-4. 開発環境
HTML・CSS・Ruby・JavaScript・MySQL・GitHub・AWS  
[リンク：GitHubリポジトリ](https://github.com/avocado-don/five_level_tagging)  
[リンク：GitHubプロジェクトボード](https://github.com/users/avocado-don/projects/2/views/1)　※各タスク内のメモ欄に、作業手順を記録している(自分向けの作業手順書)。  
<br>
![画像：3-4ProjectBoard](app/assets/images/readme/3-4ProjectBoard.png)
<br>
<br>
<br>

## 3-5. ローカルでの動作方法
% git clone https://github.com/avocado-don/five_level_tagging  
% cd five_level_tagging  
% bundle install  
% yarn install  
<br>
<br>
<br>

# [ 4 ] 開発の工夫
## 4-1. アイテム投稿フォーム：1つのアイテムと4組のタグ・スコアを一括保存
　アプリの機能「2-1-3. アイテム(リスト内の各項目)・タグ・スコアの投稿」に関する開発の工夫。  
<br>
/lists/1/items/new  
![画像：2-1-3(A)feature](app/assets/images/readme/2-1-3(A)feature.png)
<br>
<br>
<br>

### 4-1-1. テーブル設計：items, tags, item_tags (中間テーブルでもあり、scoreも保存する)
　(1)アイテムテーブルの1つのレコード内に、4組のタグ・スコア(複数の同種データ)をまとめて保存することは避けたい(カラム正規化のため)。よって、4組のレコードに分けて他のテーブルに保存する。  
<br>
　(2)アプリの仕様上、アイテムとタグの組み合わせが決まっている場合のみ、スコアも組み合わせて投稿できる。  
　アイテムとスコアのみ、あるいはタグとスコアのみを組み合わせて投稿するケースは存在しない。  
　(例)「サクサクのクッキー」「満腹感2のクッキー」は投稿できるが、「2のクッキー」「満腹感2」はできない。  
<br>
　(3)従って、アイテムとタグの中間テーブル(item_tags)に、スコアカラムを設ける。(item_id, tag_id, score)  
<br>
　↓seeds.rbで投入したサンプルデータ。 ※日本語の列は、外部キーと照合するためのメモであり、保存はしない。  
db/seeds/csv/item_tags.numbers  
![画像：4-1-1(A)idea](app/assets/images/readme/4-1-1(A)idea.png)
<br>
<br>
<br>

### 4-1-2. アイテム投稿・編集フォーム：タグとスコアの入力欄を、ペアにして4組並べる
　(1)複数タグの一括入力方式は、採用しない。 ※1つの入力欄内にて、スペースやカンマでタグ名を区切る方式。  
　1つのタグ入力欄にどのスコア入力欄が紐づいているか、ユーザーの視覚・直感を考慮し、入力欄を並べる。  
<br>
/lists/1/items/3/edit　リスト：【小学生低学年】おやつ献立の候補食品 → アイテム編集：フルーツゼリー	  
![画像：4-1-2(A)idea](app/assets/images/readme/4-1-2(A)idea.png)
<br>
<br>
<br>
　(2)8つのラベルと8つの入力欄を紐づける。ラベルをクリックすると、紐づいた入力欄にフォーカスできる。  
　22・26: labelのfor属性とtext_fieldのid属性を紐づける際、ブロック変数iを使う(item_form_tag_name#{i+1})。  
　変数を使わないと、全てのラベルが1つ目の入力欄に紐づいてしまう。31・35のlabelとnumber_fieldも同様。  
<br>
app/views/items/_form.html.erb  
![画像：4-1-2(B)idea](app/assets/images/readme/4-1-2(B)idea.png)
<br>
<br>
<br>

### 4-1-3. アイテム投稿・編集フォーム：タグ・スコアの入力値を4つずつ、配列に入れて送信
　(1)4つの入力欄に入力した値を、1つの配列に格納する。さらに、配列自体を値として、ハッシュに格納する。  
　26: text_fieldのname属性：item_form[tag_names][]に設定。4つのタグ入力欄のname属性を統一。  
　35: number_fieldのname属性：item_form[scores][]に設定。4つのスコア入力欄のname属性を統一。  
<br>
app/views/items/_form.html.erb  
![画像：4-1-3(A)idea](app/assets/images/readme/4-1-3(A)idea.png)
<br>
<br>
<br>
　(2)フォームから送信したパラメータの例↓  
　Parameters: {"item_form"=>{"tag_names"=>["満腹感", "甘い", "のどごし", ""], "scores"=>["2", "1", "", ""]}}  
　※paramsのキーはitem_form、値は入れ子のハッシュ。ハッシュのキーはtag_namesとscores、値は配列。  
<br>
/lists/1/items/3/edit　リスト：【小学生低学年】おやつ献立の候補食品 → アイテム編集：フルーツゼリー	  
![画像：4-1-3(B)idea](app/assets/images/readme/4-1-3(B)idea.png)
<br>
<br>
<br>
### 4-1-4. ストロングパラメータ、フォームオブジェクト：配列の取得と変更を許可
　(1)ストロングパラメータ  
　53: permitメソッド：配列tag_names: []とscores: []を指定し、フォームからの取得を許可。  
<br>
app/controllers/items_controller.rb  
![画像：4-1-4(A)idea](app/assets/images/readme/4-1-4(A)idea.png)
<br>
<br>
<br>
　(2)フォームオブジェクト：単一のフォームから複数テーブル(items, tags, item_tags)に保存できる実装パターン。  
　1-2: includeメソッド：モデル用の機能をItemFormクラスに継承。複数モデルの属性値を単一のクラスインスタンス@item_formにまとめて代入し、各種メソッドで操作可能にする(form_with, assign_attributes, validates)。  
<br>
　8-9: attr_accessorメソッド：配列tag_namesとscoresを指定し、ItemFormクラスでの取得と変更を許可。  
　配列から取り出した値の保存先カラム名tag_nameとscoreも、配列と分けて指定。  
<br>
　13-15: validatesメソッド：配列(tag_names, scores)とカラム名(tag_name, score)両方の値を、保存時に検証。  
<br>
app/models/item_form.rb  
![画像：4-1-4(B)idea](app/assets/images/readme/4-1-4(B)idea.png)
<br>
<br>
<br>

### 4-1-5. フォームオブジェクト：タグ配列・スコア配列を4つずつのレコードに分けて保存
　(1)ItemFormクラス内で、save_item_formメソッドを新たに定義する。createアクション内で実行する。  
　アイテム→タグ→中間テーブル(スコアも含む)の順にレコードを保存する。  
　アイテムはフォーム入力が必須(必ず保存)、タグとスコアはフォーム入力が任意(保存しない場合もある)。  
<br>
　20: 配列tag_namesの0〜3番目に値が入っている場合(タグをフォームに入力した場合)、タグの保存処理を実行。  
<br>
　21: first_or_createメソッド：フォームに入力したタグと同名のタグが、tagsテーブルに既に存在する場合、既存タグのレコードを取得する。存在しない場合、新規タグを保存する。  
<br>
<br>
　(2)アイテムとタグをフォームに入力した場合、中間テーブルにもレコードを保存する。  
　かつ、タグに紐づくスコアは入力していない場合、アイテムとタグの紐づけのみを保存(item_id, tag_id)。  
　逆に、スコアも入力した場合、アイテム・タグの紐づけと共にスコアも保存(item_id, tag_id, score)。  
<br>
　23: timesメソッドのループ処理内で、同じ添字を使い、tag_names[0]〜[3]に紐づくscores[0]〜[3]を取得する。  
　tag_names[i]に紐づくスコアを入力していない場合、scores[i]の値は空となり、中間テーブルに保存されない。  
<br>
　なお、タグに紐づかないスコアだけを保存するケースは、仕様上存在しない(フォーム上でタグ欄が空欄のまま、紐づくスコア欄にだけ入力したとしても、スコアを保存しない)。  
<br>
　※22: no_touchingメソッド：開発の工夫4-5にて後述。  
<br>
app/models/item_form.rb  
![画像：4-1-5(A)idea](app/assets/images/readme/4-1-5(A)idea.png)
<br>
<br>
<br>
app/controllers/items_controller.rb  
![画像：4-1-5(B)idea](app/assets/images/readme/4-1-5(B)idea.png)
<br>
<br>
<br>

### 4-1-6. editアクション：保存済みアイテムに紐づくタグ・スコアを4つずつ、配列として取得
　(1)アイテム編集に必要なレコードの値を取得する(アイテム1つ、タグ0〜4つ、スコア0〜4つ)。  
　24: pluckメソッド：@itemに紐づくtagsレコードの、tag_nameカラムの値を配列化。  
　25: pluckメソッド：@itemに紐づくitem_tagsレコードの、scoreカラムの値を配列化。  
<br>
app/controllers/items_controller.rb  
![画像：4-1-6(A)idea](app/assets/images/readme/4-1-6(A)idea.png)
<br>
<br>
<br>

### 4-1-7. アイテム編集フォーム：保存済みタグ・スコアの値を、4組の入力欄に自動入力
　(1)(投稿画面ではなく)編集画面に遷移する際、前回保存したレコードの値を、フォームに自動で入力しておく。  
　23・32: @itemが存在する場合、部分テンプレートの表示内容を変更(以下のvalue属性を追加)。  
　24: text_fieldのvalue属性：配列@item_form.tag_namesのi番目の値を、入力欄(id: i+1番)の初期値に設定。  
　33: number_fieldのvalue属性：配列@item_form.scoresのi番目の値を、入力欄(id: i+1番)の初期値に設定。  
<br>
app/views/items/_form.html.erb  
![画像：4-1-2(B)idea](app/assets/images/readme/4-1-2(B)idea.png)
<br>
<br>
<br>
/lists/1/items/3/edit　リスト：【小学生低学年】おやつ献立の候補食品 → アイテム編集：フルーツゼリー	  
![画像：4-1-2(A)idea](app/assets/images/readme/4-1-2(A)idea.png)
<br>
<br>
<br>

### 4-1-8. フォームオブジェクト：アイテム1つに紐づくタグ4つ・スコア4つを更新または削除
　(1)ItemFormクラス内で、update_item_formメソッドを新たに定義する。updateアクション内で実行する。  
　29: 引数：編集フォームから送信されたitem_form_params(編集後のデータ)と、@item(編集前のレコード)。  
　params：アイテム(item_name, description, list_id, images)、タグ配列(tag_names)、スコア配列(scores)。  
<br>
　(2)paramsをアイテム／タグ配列／スコア配列に分解し、それぞれの値をレコードの更新処理に使う。  
　31-32: deleteメソッド：paramsから削除したタグ・スコアが、削除処理の返り値となる。変数化して使い回す。  
　33: updateメソッド：アイテムに関するデータだけが残ったparamsを使い、アイテムのレコードを更新。  
<br>
　(3)タグをフォームに入力した場合、中間テーブルのレコード(スコアも含む)も更新、または新規保存する。  
　36-37: first_or_createメソッド：既存タグのレコードを取得、または新規タグを保存。  
　30: 編集前のitemに紐づく、編集前のitem_tagレコードを0〜4つ取得して配列化。  
　38-39: updateメソッド：編集前のi番目(0〜3番目)のitem_tagに、i番目の欄に入力したtag_idとscoreを上書き。  
　40-41: createメソッド：編集前のitem_tagがi番目に存在しない場合、i番目に入力したtag_idとscoreを保存。  
<br>
　(4)編集画面遷移時に自動入力されたタグを削除し、空欄で送信した場合、中間テーブルのレコードも削除する。  
　アイテムとタグの紐づけは削除するが、タグ自体はテーブルに残す(複数のユーザー・リストで使い回すため)。  
　43-44: destroyメソッド：i番目のタグ欄が空欄の場合、編集前のitem_tagがi番目に存在するなら削除。  
<br>
　※30行目をitem.item_tags.destroy_allとし、38-44行目をItemTag.createに一本化する方法もある。  
　その場合、updateアクションを実行するたびに、(タグやスコアを変更・削除しなくても)既存のitem_tagを全て削除するがゆえにレコードIDが欠番となり、item_tagを保存し直すがゆえにレコードIDと自動採番値が毎回増える。  
　従って今回は、item_tagレコードを削除・再度保存する回数を減らすために、条件分岐を実装した。  
<br>
app/models/item_form.rb  
![画像：4-1-8(A)idea](app/assets/images/readme/4-1-8(A)idea.png)
<br>
<br>
<br>
app/controllers/items_controller.rb  
![画像：4-1-8(B)idea](app/assets/images/readme/4-1-8(B)idea.png)
<br>
<br>
<br>
app/controllers/items_controller.rb  
![画像：4-1-4(A)idea](app/assets/images/readme/4-1-4(A)idea.png)
<br>
<br>
<br>

### 4-1-9. アイテム一覧表：アイテムに紐づくタグ、タグに紐づくスコアが存在するなら表示
　(1)アイテム・タグ・スコアの一覧表示に必要なレコードを取得する(items, tags, item_tags)。  
　8: includesメソッド：複数のアイテムに紐づく、複数のタグをまとめて取得。同時に、中間テーブルitem_tagsのレコード(スコアカラムを含む)もまとめて取得できる。  
<br>
app/controllers/lists_controller.rb  
![画像：4-1-9(A)idea](app/assets/images/readme/4-1-9(A)idea.png)
<br>
<br>
<br>
　(2)HTMLのテーブルセルを4つ並べる。タグ・スコア最大4組を各セル内に表示する。余った欄は空欄にする。  
　49-51: timesメソッド：tableのtr(1行)内に、tdを4回繰り返し配置。タグ・スコアの存在判定は各td内で実行。  
　53: 1つのアイテムに紐づくi番目(0〜3番目)のタグが存在する場合、タグ名(タグ詳細画面へのリンク)を表示。  
<br>
　57: &.(セーフナビゲーション)：1つのアイテムに紐づくi番目(0〜3番目)のタグが存在し(つまりi番目のitem_tagsレコードも存在し)、かつ、item_tagsレコード内のスコアも存在する場合、タグ名の隣に「：」とスコアを表示。  
　逆に、タグが存在しない場合、または、タグは存在するがスコアは存在しない場合、「：」もスコアも非表示。  
<br>
app/views/shared/_item_table.html.erb  
![画像：4-1-9(B)idea](app/assets/images/readme/4-1-9(B)idea.png)
<br>
<br>
<br>
/lists/1  
![画像：2-1-1(C)feature](app/assets/images/readme/2-1-1(C)feature.png)
<br>
<br>
<br>

## 4-2. タグ逐次検索：文字入力のたびに既存タグを検索、ボタンを生成し直す
　アプリの機能「2-1-3. タグ入力時の逐次検索」に関する開発の工夫。  
<br>
/lists/1/items/new  
![画像：4-2-1(A)idea](app/assets/images/readme/4-2-1(A)idea.png)
<br>
<br>
<br>
　31: return文：タグ名入力欄で、削除キーを押して空欄になった場合は、タグ検索を中止。  
　32: whereメソッド、LIKE句、プレースホルダ：SQLインジェクションを回避した上で、部分一致検索。  
<br>
app/controllers/tags_controller.rb  
![画像：4-2-1(B)idea](app/assets/images/readme/4-2-1(B)idea.png)
<br>
<br>
<br>
　26: text_fieldのid属性：ループ処理内のタグ名入力欄4つを、変数iで区別。入力欄ごとにinputイベント実行。  
　28: 空のdiv要素：入力欄ごとに、タグ検索結果の表示領域を併設しておく。inputイベントの内容に応じ、タグ名ボタンを生成。検索前の状態、または検索結果0件の時は、何も表示しない。  
<br>
app/views/items/_form.html.erb  
![画像：4-2-1(C)idea](app/assets/images/readme/4-2-1(C)idea.png)
<br>
<br>
<br>
　2-3: getElementByIdメソッド：アイテム投稿・編集画面でのみ、関数処理を実行。  
　4-5: getElementByIdメソッド：4つのタグ名入力欄を順に読み込み、欄ごとにイベントを実行。  
　7, 10-14: inputイベント：入力された文字列を検索ワードとしてURL化し、JSON形式でリクエストを送信。  
<br>
　15-16: onloadイベント：レスポンスが返ってきたら、検索結果表示領域を読み込む。  
　17: innerHTMLプロパティ：前回の検索結果表示を消去しておく。前回の検索結果をクリックしないまま、新たに文字列を入力するケースに対応。  
<br>
　18-19: if文：空白以外の文字列が入力された時に、検索結果の表示処理を実行。  
　20-21: forEachメソッド：検索結果(タグレコード群)をループ処理。  
　22-25: createElement・setAttributeメソッド：各レコードをspan要素(インライン要素)化し、タグ名ボタン群を横並びで表示。ボタン群に共通のクラス名(CSSプロパティ)を付与。  
　26: insertAdjacentElementメソッド：検索結果表示領域(div要素)の下端に、各タグ名ボタン(span要素)を挿入。  
　27-29: clickイベント・textContentプロパティ：各タグ名ボタンをクリックすると、タグ名入力欄に入力される。ボタン群を全て消去。  
<br>
　6-9, 34-35: setTimeout・clearTimeoutメソッド：クエリ発行回数を抑えるためのタイマー処理。inputイベント1回につき、1秒待ってから検索を実行。1秒未満で次のinputイベントが発火したら(＝素早く入力したら)、前回の検索を中止して次の検索を実行。  
<br>
app/javascript/search_tags.js  
![画像：4-2-1(D)idea](app/assets/images/readme/4-2-1(D)idea.png)
<br>
<br>
<br>
　258: white-spaceプロパティ：タグ名ボタン群(子要素)が表示領域(親要素)の右端に到達した場合、折り返して次の行に表示。  
　269: displayプロパティ：タグ名ボタンをインラインブロック要素に指定。複数のボタンを横に並べる。  
　※ブロックレベル要素：ボタンが1つずつ改行され、縦に並んでしまう。  
　※インライン要素：上下の余白が反映されず、折り返した際に上下のボタンが重なってしまう。また、ボタンの途中で折り返しが発生し、ボタンの見た目が分離してしまう。  
<br>
app/assets/stylesheets/style.css  
![画像：4-2-1(E)idea](app/assets/images/readme/4-2-1(E)idea.png)
<br>
<br>
<br>

## 4-3. アイテム番号：要素の表示位置を入れ替え、順番を取得、カラムに保存
　アプリの機能「2-1-4. 自作リストのアイテム一覧：ドラッグ＆ドロップして表示順番を変更・保存」に関する開発の工夫。  
<br>
/lists/6  
![画像：2-1-4(A)feature](app/assets/images/readme/2-1-4(A)feature.gif)
<br>
<br>
<br>
　10-11: jQuery UI sortableの導入：HTML要素をドラッグ＆ドロップし、表示位置を入れ替える。  
<br>
app/javascript/packs/application.js  
![画像：4-3-1(A)idea](app/assets/images/readme/4-3-1(A)idea.png)
<br>
<br>
<br>
　ranked-modelの導入：レコードの並び順番号をカラムに保存。並び順の変更時に、番号を再付与。  
　9: includeメソッド：ranked-modelの機能をItemモデルに継承。  
　10: with_sameオプション：同一リスト内で、アイテムの並び順番号を変更・保存。  
<br>
app/models/item.rb  
![画像：4-3-1(B)idea](app/assets/images/readme/4-3-1(B)idea.png)
<br>
<br>
<br>
　4-8: resourcesメソッド：sortアクションのパスに、リストIDとアイテムIDを組み込む。  
<br>
config/routes.rb  
![画像：4-3-1(C)idea](app/assets/images/readme/4-3-1(C)idea.png)
<br>
<br>
<br>
　6-7: ransackの導入(@q.sortsの初期値)：row_order(リスト作者が指定したアイテム番号)の昇順で、リスト内アイテム一覧を表示。  
<br>
app/controllers/lists_controller.rb  
![画像：4-1-9(A)idea](app/assets/images/readme/4-1-9(A)idea.png)
<br>
<br>
<br>
　19, 27: sortアクション > assign_attributesメソッド：ranked-modelの仕様により、10桁ほどの大きな数値が、飛び飛びでrow_orderカラムに割り振られる。その数値の昇順が、リスト作者の指定したアイテム並び順を意味する。  
<br>
　21, 30: renumber_row_orderメソッドを新たに定義して呼び出す。  
　32: rankメソッド(ranked-modelから継承)：row_orderカラムの昇順で、リスト内アイテムレコード群を取得。  
　33: assign_attributesメソッド：リスト内の全アイテムのrow_orderを、1からの連番に書き換える。ビュー上でアイテム番号として表示させる。10桁の飛び飛びの数値より、順番を視認しやすい。  
<br>
　21: timesメソッド：全アイテムの連番書き換え処理を、2回繰り返す。2つのアイテム間に別のアイテムを割り込ませた場合に、数値の連番が崩れて欠番が生じる現象に対応するため。  
<br>
　10, 33: createアクション > assign_attributesメソッド：新たに保存するアイテムのrow_orderカラムに、連番の最大値を付与。それより古いアイテム群には、前回と同じ連番が1から順に割り当てられるため、番号の変更はない。  
<br>
　※20, 31, 34: no_touchingメソッド、touchオプション：開発の工夫4-5にて後述。touchオプションを使うために、updateではなく、assign_attributesとsaveを使用。  
<br>
app/controllers/items_controller.rb  
![画像：4-3-1(D)idea](app/assets/images/readme/4-3-1(D)idea.png)
<br>
<br>
<br>
　40-41, 44: link_toのid属性、sort_link asc(row_orderカラム)が生成するhref属性：「自作のリスト詳細画面」かつ「作者指定順（昇順）画面」でのみ取得できるHTML要素(sort_items.jsのイベントトリガー)。  
<br>
app/views/lists/show.html.erb  
![画像：4-3-1(E)idea](app/assets/images/readme/4-3-1(E)idea.png)
<br>
<br>
<br>
　4: 親要素(div)：アイテム一覧表(sort_items.jsのsortableメソッドの対象)。  
　5-7: 直下の子要素(table)：各アイテム(順番入れ替え対象)。href属性にsortアクションのパスをerbで埋め込む。  
<br>
　22: item.row_order(span)：アイテムのソート番号(リスト作者が指定した順番)を、1から連番で表示。  
　22, 26: js_handle(span)：ドラッグ操作時につかめる要素。アイテム番号かアイテム名をつかみ、アイテム全体をドラッグできる。  
<br>
app/views/shared/_item_table.html.erb  
![画像：4-3-1(F)idea](app/assets/images/readme/4-3-1(F)idea.png)
<br>
<br>
<br>
　3, 5: "#js_link_new_item"：ログイン中、かつ「自作リストの詳細画面」でのみ、関数処理を実行(つまり、リスト作者のみ実行可能)。  
　4-5: "a[href$='row_order+desc']"：「並び替え（作者指定順） ▲」(昇順表示)の画面でのみ、関数処理を実行。降順表示画面への切り替えリンクボタン(a要素のhref属性)と後方一致($='')しているか判定。  
<br>
　6: sortableメソッド：指定した要素の直下の子要素群を、ドラッグ＆ドロップで表示順番入れ替え可能にする。アイテム一覧表内の各アイテム。  
　7: handleオプション：指定した要素をドラッグ操作可能にする。アイテム番号およびアイテム名の部分をつかむことで、1つのアイテム全体を動かせる。  
　9: placeholderオプション：ドロップ可能な領域にクラス名を設定し、CSSで余白の高さを設定。ドロップ可能な位置に空白を作り、見やすくする。  
<br>
　11: updateイベント：ドラッグ＆ドロップ操作によって表示の入れ替えが完了した瞬間に、イベント発火。  
　14: ajaxメソッド：Ajax通信でパラメータをコントローラに送信。  
　12, 16: urlオプション：移動したHTML要素(ui.itemオブジェクト)のhref属性(ビュー側で設定済み)を取得し、sortアクションのパスとして送信。  
　13, 18: dataオプション：入れ替え可能な要素群の中で、実際に移動した要素が何番目になったか(ui.itemオブジェクトのindex番号)を取得。row_order_positionキーとのハッシュにして送信することで、順番が変動する全てのアイテムのrow_orderカラムを更新。  
<br>
　19-20: doneメソッド、location.reloadメソッド：アイテム番号の更新成功後、ページを再読み込み。データベースの最新の値(row_order)を、アイテム番号として表示するため。  
<br>
app/javascript/sort_items.js  
![画像：4-3-1(G)idea](app/assets/images/readme/4-3-1(G)idea.png)
<br>
<br>
<br>
　188-194: sortableメソッドを親要素に使うことで、クラス名ui-sortable-handleを直下子要素に自動付与。  
　189: cursorプロパティ：ドラッグ可能な要素にカーソルをポイントした際に、手のひらカーソルに表示変更。  
　193: cursorプロパティ：ドラッグ中は、握るカーソルに表示変更。  
<br>
app/assets/stylesheets/style.css  
![画像：4-3-1(H)idea](app/assets/images/readme/4-3-1(H)idea.png)
<br>
<br>
<br>

## 4-4. 開閉ボタン：投稿物の高さに応じて表示分岐、ボタンを押して表示切替
　アプリの機能「2-1-1. 表示が省略されたコンテンツの開閉」に関する開発の工夫。  
<br>
　ユーザー(連絡先・自己紹介)、リスト(コンセプト・リスト作成ルール)、アイテム(説明・画像)：
ユーザーの投稿したコンテンツ(テキストや画像)の表示が一定の高さを超えた場合、表示を一部省略し、展開ボタンを設置する。
クリックするたびに、表示の展開と折りたたみを切り替える。  
<br>
/lists  
![画像：2-1-1(A)feature](app/assets/images/readme/2-1-1(A)feature.png)
<br>
<br>
<br>
　19-23: リスト一覧表の開閉コンテンツ：リストテーブルのカラム(コンセプト)。  
　20, 21: 空のdiv要素：コンテンツが一定の高さを超えたらイベント発火。開閉ボタンを生成。半透明グラデーションを生成(省略されたコンテンツに続きがあることを、視覚的に示唆)。  
<br>
　22: カスタムヘルパーsafe_linebreakメソッドを新たに定義：ユーザーの投稿したテキストが改行を含んでいる場合でも、XSS攻撃を回避しつつ、HTML上で安全に表示させる。  
<br>
app/views/shared/_list_table.html.erb  
![画像：4-4-1(A)idea](app/assets/images/readme/4-4-1(A)idea.png)
<br>
<br>
<br>
　hメソッド：テキストにHTMLタグが入力されていても無効化。  
　gsubメソッド：入力された改行コードをHTMLタグに置換。  
　html_safeメソッド：HTMLタグを有効化。  
<br>
app/helpers/application_helper.rb  
![画像：4-4-1(B)idea](app/assets/images/readme/4-4-1(B)idea.png)
<br>
<br>
<br>
/lists/1  
![画像：4-4-1(C)idea](app/assets/images/readme/4-4-1(C)idea.png)
<br>
<br>
<br>
/lists/6  
![画像：4-4-1(D)idea](app/assets/images/readme/4-4-1(D)idea.png)
<br>
<br>
<br>
　15-19, 24-28: テキストボックスの開閉コンテンツ：リストテーブルのカラム(コンセプト・リスト作成ルール)。  
<br>
app/views/lists/show.html.erb  
![画像：4-4-1(E)idea](app/assets/images/readme/4-4-1(E)idea.png)
<br>
<br>
<br>
　30-34, 36-45: アイテム一覧表の開閉コンテンツ：アイテムテーブルのカラム(説明・画像)。  
<br>
app/views/shared/_item_table.html.erb  
![画像：4-4-1(F)idea](app/assets/images/readme/4-4-1(F)idea.png)
<br>
<br>
<br>
　168-169: display: grid、grid-template-columnsプロパティ：複数の子要素(画像)を格子状に配置。2列に設定。画像は最大4枚なので、2列×2行の格子になる。3枚以上投稿すると、画像群の表示が一部省略される高さになる。  
<br>
　171: place-contentプロパティ：グリッドトラック(列や行に設定した長さの合計)を、グリッドコンテナ(親要素自体に設定した長さ)内で上下左右中央揃え。  
　172: place-itemsプロパティ：全てのグリッドアイテム(画像)を、各グリッドセル内で上下左右中央揃え。  
<br>
app/assets/stylesheets/style.css  
![画像：4-4-1(G)idea](app/assets/images/readme/4-4-1(G)idea.png)
<br>
<br>
<br>
　63-65: コンテンツラッパー(position: relative)：子要素(グラデーションとボタン)の相対位置の基準。  
<br>
　67-69: コンテンツ折りたたみ時(overflow: hidden)：コンテンツのうち、一定の高さをはみ出した部分は非表示。  
　コンテンツ展開時、またはコンテンツの高さが指定以下：はみ出す部分はない。  
<br>
　71-79: コンテンツ折りたたみ時(background: linear-gradient)：グラデーション表示。上部から下部に向かってコンテンツを徐々に半透明化。  
　コンテンツ展開時、またはコンテンツの高さが指定以下(display: none)：グラデーション非表示。  
<br>
　81-92: コンテンツの高さが指定以下(display: none)：ボタン非表示。  
　コンテンツ折りたたみ時、またはコンテンツ展開時(z-index: 1)：ボタン表示。グラデーションより手前に表示することで、ボタンは半透明にしない。  
<br>
　94-95: コンテンツの高さが指定以下：グラデーションとボタンを非表示(is_visibleクラス削除)。  
　コンテンツ折りたたみ時(display: block)：グラデーションとボタンを表示(is_visibleクラス追加)。  
　コンテンツ展開時：ボタンを表示(is_visibleクラス追加)。グラデーションを非表示(is_visibleクラス削除)。  
<br>
app/assets/stylesheets/style.css  
![画像：4-4-1(H)idea](app/assets/images/readme/4-4-1(H)idea.png)
<br>
<br>
<br>
　32-39: getElementsByClassNameメソッド：3種のコンテンツラッパーを、配列で取得。コンテンツ折りたたみ時に表示できる高さを、3種とも異なる行数で指定。  
　2-3: getComputedStyleメソッド：HTMLに設定された1行の高さ(px)を取得し、小数に変換。1行の高さと行数の積を、コンテンツ折りたたみ時の高さとして定義。  
<br>
　5-8: lengthプロパティ：コンテンツラッパー配列の要素数と同じ回数分、ループ処理。各ラッパーの子要素をクラス名配列で取得(コンテンツ、半透明グラデーション、ボタン)。子要素は各クラスにつき1つずつしか存在しないので、添字0番目で指定。  
<br>
　11: clientHeightプロパティ：コンテンツの高さ(height + padding)を取得。コンテンツ展開時の高さとして定義。  
　※10: style.heightプロパティ：ブラウザバックした場合は、前回設定した高さが残っているので、高さを事前にリセットしておく。  
<br>
　12-16: コンテンツの高さが指定行数以下：コンテンツの高さは変更しない。グラデーションとボタンは非表示。  
　コンテンツの高さが指定行数より大きい(style.heightプロパティ)：コンテンツを折りたたむ(一部表示)。  
　classList.addメソッド：グラデーションと展開ボタン(▼)を表示。  
<br>
　4, 17-21: コンテンツ折りたたみ中(グラデーション表示中)にボタンをクリック(classList.containsメソッド)：コンテンツを展開する(全体表示)。  
　style.heightプロパティ：コンテンツは展開時の高さ＋1.5行分の余白を確保。コンテンツ本体に重ならない位置にボタンを表示するため。  
　classList.removeメソッド：グラデーションは非表示。折りたたみボタン(▲)を表示。  
<br>
　22-25: コンテンツ展開中(グラデーション非表示中)にボタンをクリック：コンテンツを折りたたむ(一部表示)。  
<br>
app/javascript/show_more_content.js  
![画像：4-4-1(I)idea](app/assets/images/readme/4-4-1(I)idea.png)
<br>
<br>
<br>

## 4-5. 親子モデルの更新日時を連動：リスト更新機会が増加、一覧上位に表示
　アプリの機能「2-1-1. リスト一覧やアイテム一覧の表示・並び替え」に関する開発の工夫。  
<br>
/lists  
![画像：4-5-1(A)idea](app/assets/images/readme/4-5-1(A)idea.png)
<br>
<br>
<br>
/lists/1  
![画像：4-5-1(B)idea](app/assets/images/readme/4-5-1(B)idea.png)
<br>
<br>
<br>
　9: ransackの導入(sort_linkメソッド)：更新日時カラムを基準に、一覧表を並び替え。リンクボタンをクリックするたびに、昇順・降順を切り替える。  
<br>
　27: to_sメソッド：更新日時を取得して文字列に変換。日時の書式datetime_jpを新たに定義して呼び出す。  
<br>
app/views/shared/_list_table.html.erb  
![画像：4-5-1(C)idea](app/assets/images/readme/4-5-1(C)idea.png)
<br>
<br>
<br>
　1: Time::DATE_FORMATS設定：「年-月-日 時:分」の表記に変更。デフォルトの書式から「秒」と「UTCとの時差表記」を除外。  
<br>
config/initializers/time_formats.rb  
![画像：4-5-1(D)idea](app/assets/images/readme/4-5-1(D)idea.png)
<br>
<br>
<br>
　13: config.time_zone設定：デフォルトのUTCから、JSTに変更。  
<br>
config/application.rb  
![画像：4-5-1(E)idea](app/assets/images/readme/4-5-1(E)idea.png)
<br>
<br>
<br>
　4: belongs_to関連づけのtouchオプション：アイテムを新規保存・更新すると、リスト更新日時も連動で更新。  
　データの保存先テーブルは分かれているものの、個々のアイテムもリスト全体を構成する情報の一部と見なす。リスト更新日時を更新しやすい仕様にして、更新が活発なリストをトップページ(リスト一覧)上位に載せやすくする。  
<br>
app/models/item.rb  
![画像：4-5-1(F)idea](app/assets/images/readme/4-5-1(F)idea.png)
<br>
<br>
<br>
　2: belongs_to関連づけのtouchオプション：中間テーブル(カラムitem_id, tag_id, score)を更新すると、アイテム(およびリスト)の更新日時も連動で更新。  
　アイテム・タグ・スコアの一括編集画面で、アイテムのカラムを変更せず、タグやスコアのみを変更・削除した場合でも、アイテム(を構成する情報の一部)を更新したと見なす。  
<br>
app/models/item_tag.rb  
![画像：4-5-1(G)idea](app/assets/images/readme/4-5-1(G)idea.png)
<br>
<br>
<br>
　22: no_touchingメソッド：アイテム新規保存時は、最大4つの中間テーブルも併せて保存している。その際は、中間テーブルとアイテムの更新日時を連動させないことで、クエリ発行回数を抑える。  
<br>
app/models/item_form.rb  
![画像：4-1-5(A)idea](app/assets/images/readme/4-1-5(A)idea.png)
<br>
<br>
<br>
　46, 60: saveメソッドのtouchオプション(※belongs_toのtouchとは別の機能)：アイテム順番変更時は、リスト内の複数のアイテム番号を同時に更新している。その際は、複数アイテムの更新日時は同時更新させない。仮に同時更新すると、更新日時の時差がなくなり、更新日時を基準にした表示並び替えボタンが役に立たなくなるため。  
<br>
　57: no_touchingメソッド：アイテム順番変更時、アイテム番号は複数回更新している(詳細は開発の工夫4-3)。最初(46行目)のアイテム更新時は、リスト更新日時も連動で更新させる(belongs_toのtouchの効果)。その後(60行目)のループ処理中のアイテム更新時は、リスト更新日時を連動させないことで、クエリ発行回数を抑える。  
<br>
app/controllers/items_controller.rb  
![画像：4-5-1(H)idea](app/assets/images/readme/4-5-1(H)idea.png)
<br>
<br>
<br>
　12-14: CSV.foreachメソッド：複数リスト(サンプルデータ)を一斉に新規保存。更新日時の時差がない状態。  
　17-20: days.agoメソッド：更新日時の時差を拡大して上書き。ブラウザ上でサンプルデータを表示する際、時差を目立たせることで、更新日時を基準にした並び替え機能の効果を、視覚的に分かりやすくするため。  
<br>
　22-34: no_touchingメソッド：複数アイテムも一斉に新規保存後、更新日時を上書き。その際、リスト更新日時を連動させないことで、前もって設定したリスト更新日時の時差を維持。  
　45-49: no_touchingメソッド：中間テーブル新規保存時も同様に、アイテム更新日時を連動させない。  
<br>
db/seeds.rb  
![画像：4-5-1(I)idea](app/assets/images/readme/4-5-1(I)idea.png)
<br>
<br>
<br>

## 4-6. ユーザーと1対1の最新リスト取得：1対多のリスト内で更新日時を比較
　アプリの機能「2-1-5. ユーザー一覧(各ユーザーの最新リスト)の表示・並び替え」に関する開発の工夫。  
<br>
/users  
![画像：2-1-5(A)feature](app/assets/images/readme/2-1-5(A)feature.png)
<br>
<br>
<br>
　5-16: has_one関連づけのclass_nameオプション：各ユーザーが更新した最新リストを1件ずつ取得(N+1回避)。  
　1人のユーザーに紐づく複数リストのうち、更新日時がこれより大きいリストは存在しない、という条件に該当するリストレコードを1件取得。「最新リスト(latest_list)」としてユーザーと1対1の関連づけ。  
<br>
　26-28: ransackable_associationsメソッド：ransackの機能(sort_linkメソッド)でユーザー一覧を並べ替える際の基準として、関連づけられた最新リストを使用。  
<br>
app/models/user.rb  
![画像：4-6-1(A)idea](app/assets/images/readme/4-6-1(A)idea.png)
<br>
<br>
<br>
　5-6: @q.sortsの初期値：各ユーザーに紐づく最新リストの更新日時の降順で、ユーザー一覧を表示。  
<br>
app/controllers/users_controller.rb  
![画像：4-6-1(B)idea](app/assets/images/readme/4-6-1(B)idea.png)
<br>
<br>
<br>
　18: sort_linkメソッド：各ユーザーに紐づく最新リストの更新日時で、ユーザー一覧を並び替え(昇順・降順)。  
<br>
　33-34: userのアソシエーションメソッド：仮にlatest_listとの関連づけをせず、user.lists.order("updated_at DESC").first という呼び出しをすると、ユーザー数と同じ回数分、リスト取得クエリを発行してしまう(N+1問題)。  
<br>
app/views/users/index.html.erb  
![画像：4-6-1(C)idea](app/assets/images/readme/4-6-1(C)idea.png)
<br>
<br>
<br>

## 4-7. パスワード：未入力時は他カラムを更新、入力時はパスワードも更新
　アプリの機能「2-1-5. マイページの表示・編集」に関する開発の工夫。  
<br>
　現在のパスワードを入力せずに、ユーザー情報(パスワード以外)を更新。パスワードはログイン時に1回入力。  
　情報を繰り返し細かく修正しやすい。利便性を優先。  
<br>
　別のパスワードに変更したい場合は、現在のパスワードも併せて入力する。  
　仮にログイン中の画面で第三者が操作しても、不正なパスワード変更を防げる。安全性を優先。  
<br>
/users/edit  
![画像：2-1-5(C)feature](app/assets/images/readme/2-1-5(C)feature.png)
<br>
<br>
<br>
　deviseの初期設定では、ユーザー情報のどのカラムを更新する場合でも、現在のパスワード入力が必須。  
　3: class名：deviseのregistrationコントローラを継承したカスタムコントローラを生成し、設定を変更していく。  
　ターミナルコマンド：rails g devise:controllers users  
<br>
　9-16: def文：deviseに存在するupdate_resourceメソッドを、カスタムコントローラ内でオーバーライド。  
　deviseの2種のメソッドupdate_with_passwordとupdate_without_passwordを、条件分岐で使い分ける。  
　※上書き前のupdate_resourceメソッド内部では、update_with_passwordメソッドのみを呼び出している。  
<br>
　10-11: if文：新規パスワード、新規パスワード確認、現在のパスワード、3つの欄全てに入力している場合のみ、パスワードを含む全てのユーザー情報カラムを更新する。  
　11: update_with_passwordメソッド内部では、current_passwordの検証をした上でparamsから削除している。  
<br>
　12-14: else文：3つの欄が全て埋まっていない場合(1〜2つ入力された場合でも)、パスワード関連のparamsを3つとも削除してから、パスワード以外のユーザー情報カラムを更新する。  
　14: update_without_passwordメソッド内部では、paramsからpasswordとpassword_confirmationを削除した上で、残りのカラムを更新している。  
　13: deleteメソッド：update_without_passwordメソッド内部にcurrent_password削除機能はないので、更新前に削除しておく。usersテーブルに存在するカラム名ではないため、削除せずに更新しようとしてもエラーになる。  
<br>
　18-20: after_update_path_forメソッド：update_resourceメソッド内で2種のメソッドどちらを実行した場合でも、更新が成功したら、ユーザー詳細ページ(マイページ)にリダイレクト。  
　※更新に失敗した場合は、deviseの初期設定通り、編集ページにレンダリング。  
<br>
app/controllers/users/registrations_controller.rb  
![画像：4-7-1(A)idea](app/assets/images/readme/4-7-1(A)idea.png)
<br>
<br>
<br>
　2: devise_forメソッドでルーティング生成：ユーザー登録・編集に関するアクションを、カスタムコントローラusers/registrationsにて実行。  
<br>
config/routes.rb  
![画像：4-3-1(C)idea](app/assets/images/readme/4-3-1(C)idea.png)
<br>
<br>
<br>
app/controllers/application_controller.rb  
![画像：4-7-1(B)idea](app/assets/images/readme/4-7-1(B)idea.png)
<br>
<br>
<br>
　8-10, 18-20: 編集画面のlabel要素：部分テンプレート内で、表記内容を新規登録画面から変更。「新規パスワード」「新規パスワード確認」入力欄は、変更したい時だけ入力することを強調して説明。  
<br>
　27-33: 編集画面のlabel・password_field要素：「現在のパスワード確認」入力欄は、編集画面でのみ表示。  
<br>
app/views/devise/registrations/_form.html.erb  
![画像：4-7-1(C)idea](app/assets/images/readme/4-7-1(C)idea.png)
<br>
<br>
<br>

## 4-8. 検索フォーム：AND/OR選択、複数モデル選択、結果を同じ画面に表示
　アプリの機能「2-1-6. キーワード検索：リストやアイテムの表示・並び替え」に関する開発の工夫。  
<br>
　リストまたはアイテムを選択して検索。検索フォームの下に検索結果も表示。全て同じ画面で操作と表示を完結。  
<br>
/search  
![画像：2-1-6(A)feature](app/assets/images/readme/2-1-6(A)feature.png)
<br>
<br>
/search  
![画像：2-1-6(B)feature](app/assets/images/readme/2-1-6(B)feature.png)
<br>
<br>
<br>
　14, 27: radio_buttonのchecked属性(値がnil)：キーワード検索画面に遷移し、検索を実行する前の、ラジオボタンの初期値。  
　9, 14, 19, 27, 32: text_fieldのvalue属性、radio_buttonのchecked属性：検索を実行して結果を表示した際、フォームに入力した値を残しておく。  
<br>
app/views/searches/search.html.erb  
![画像：4-8-1(A)idea](app/assets/images/readme/4-8-1(A)idea.png)
<br>
<br>
<br>
app/views/searches/search.html.erb  
![画像：4-8-1(B)idea](app/assets/images/readme/4-8-1(B)idea.png)
<br>
<br>
<br>
　23-24: else文：リスト詳細画面以外(今回はキーワード検索画面)でアイテム一覧表を表示した場合、各アイテムに紐づくリストへのリンクを追加。アイテム検索機能から、元のリストまで辿れる。  
<br>
app/views/shared/_item_table.html.erb  
![画像：4-3-1(F)idea](app/assets/images/readme/4-3-1(F)idea.png)
<br>
<br>
<br>
　1: class名：モデルに紐づかない検索用コントローラを生成。1つのフォームと同じ画面に、複数モデルのレコード一覧を表示するため。  
<br>
　5: if文：空文字以外の文字列を入力して送信した場合に、検索を実行。  
　6: keyword_searchメソッドを新たに定義：キーワードを用いたリスト・アイテム検索(searches_controller)とタグ検索(tags_controller)の共通部分を、新規メソッドとして切り出す(application_controller)。  
<br>
app/controllers/searches_controller.rb  
![画像：4-8-1(C)idea](app/assets/images/readme/4-8-1(C)idea.png)
<br>
<br>
<br>
　24: squish・splitメソッド：入力欄にスペース区切りで入力したキーワード群を、配列化。余分な空白は除外。  
　25-26: constantize・noneメソッド：文字列"List"か"Item"をクラス定数化。空のモデルオブジェクトを生成。  
　31, 37: search_recordsメソッドを新たに定義：List・Itemモデルそれぞれにクラスメソッドを定義し、キーワードを含むレコードの検索クエリを生成。  
<br>
　28-35: mergeメソッド：1つ目のキーワードで生成した検索クエリを、変数recordsに代入。2つ目以降のキーワードで生成した検索クエリを、前回のrecordsとAND条件で接続した上で、recordsに再代入。  
　36-37: orメソッド：各キーワードで生成した検索クエリを、OR条件で接続。1ループ目の空のrecordsにorメソッドを使っても、OR条件なので無視できる。  
　※AND条件の場合、空の変数と接続すると該当するレコードがなくなってしまうため、33行目のmergeメソッドは2ループ目以降に使う。  
<br>
　40: distinct・ransackメソッド：検索結果の重複を除外し、並び替え条件も追加した検索クエリを生成。  
　クエリを代入したインスタンス変数@qを、メソッドの返り値とする。呼び出し元の各コントローラーにて、対応モデルごとに異なる処理でクエリを実行していく。  
<br>
app/controllers/application_controller.rb  
![画像：4-8-1(D)idea](app/assets/images/readme/4-8-1(D)idea.png)
<br>
<br>
<br>
　21: joins・whereメソッド：リスト・アイテム(子テーブル)・タグ(孫テーブル)をキーワード検索し、リストのレコードをキャッシュ。キーワードがアイテムやタグに該当した場合、アイテムやタグ自体はキャッシュせず、紐づくリストのみをキャッシュ。  
　22-23: LIKE句、プレースホルダ：SQLインジェクションを回避した上で、部分一致検索。  
<br>
app/models/list.rb  
![画像：4-8-1(E)idea](app/assets/images/readme/4-8-1(E)idea.png)
<br>
<br>
<br>
app/models/item.rb  
![画像：4-8-1(F)idea](app/assets/images/readme/4-8-1(F)idea.png)
<br>
<br>
<br>
　10-11: preloadメソッド：検索結果のアイテム一覧を表示する際、紐づくリストへのリンクと、紐づく複数のタグ・スコアも表示したい。  
　その際、includesメソッドではなくpreloadメソッドを使い、リストとタグ・中間テーブル(スコア)を取得。  
<br>
　※search_recordsメソッドでアイテムの検索クエリを生成する際に、joinsメソッドでタグを内部結合している影響で、includesメソッドの内部でpreload(事前読み込み)ではなくeager_load(左外部結合)を選択する判定になる。  
　しかし、joinsで検索したタグはキーワードを含むものであり、includesで取得したいタグはアイテムに紐づくもの(キーワードを含むとは限らない)であるため、結局は異なるタグを読み込むことになる。  
　そこで、has_many関係のレコード取得において、結合より処理の早い事前読み込みを選択(preloadメソッド)。  
<br>
app/controllers/searches_controller.rb  
![画像：4-8-1(C)idea](app/assets/images/readme/4-8-1(C)idea.png)
<br>
<br>
<br>

## 4-9. タグ一覧：同一カラムを4列表示、最新アイテムの更新日時で並び替え
　アプリの機能「2-1-7. タグ検索」に関する開発の工夫。  
<br>
　検索フォームの下に検索結果も表示。全て同じ画面で操作と表示を完結。  
<br>
/tags  
![画像：2-1-7(A)feature](app/assets/images/readme/2-1-7(A)feature.png)
<br>
<br>
<br>
/tags  
![画像：4-9-1(A)idea](app/assets/images/readme/4-9-1(A)idea.png)
<br>
<br>
<br>
　6-17: has_one関連づけのclass_nameオプション：タグを含むアイテムの最新更新日時を1件ずつ取得(N+1回避)。  
　1つのタグに紐づく複数アイテムのうち、更新日時がこれより大きいアイテムは存在しない、という条件に該当するアイテム(とタグの中間テーブル)レコードを1件取得。「最新の中間テーブル(latest_item_tag)」としてタグと1対1の関連づけ。  
<br>
　※アイテムの保存・更新時に、中間テーブルとアイテムの更新日時は一致する設定(詳細は開発の工夫4-5)。  
　よって、アイテム(タグの孫テーブル)まで含めずとも、中間テーブル(タグの子テーブル)のレコードを取得するだけで、アイテム更新日時を取得するのと同義になる。  
<br>
　29-31: ransackable_associationsメソッド：ransackの機能(sort_linkメソッド)でタグ一覧を並べ替える際の基準として、関連づけられた最新の中間テーブルを使用。  
<br>
　35: LIKE句、プレースホルダ：SQLインジェクションを回避した上で、部分一致検索。  
<br>
app/models/tag.rb  
![画像：4-9-1(B)idea](app/assets/images/readme/4-9-1(B)idea.png)
<br>
<br>
<br>
　6: if文：空文字以外の文字列を入力して送信した場合に、検索を実行。  
　7-9: keyword_searchメソッドを新たに定義：キーワードを用いたリスト・アイテム検索(searches_controller)とタグ検索(tags_controller)の共通部分を、新規メソッドとして切り出す(application_controller)。  
　8: condition：タグ名は短い言葉での登録が多い(AND検索だと0件になりやすい)と想定し、OR検索のみで実装。  
<br>
　10-11: else文：タグ一覧・検索画面に遷移し、検索を実行していない時は、タグを全件取得。  
<br>
　14-15: each_sliceメソッド：タグレコード群を1組4つずつの配列に分割し、配列内配列を生成。ビュー側で、タグ一覧表の1行につき4列ずつのタグを表示。  
<br>
app/controllers/tags_controller.rb  
![画像：4-9-1(C)idea](app/assets/images/readme/4-9-1(C)idea.png)
<br>
<br>
<br>
app/controllers/application_controller.rb  
![画像：4-8-1(D)idea](app/assets/images/readme/4-8-1(D)idea.png)
<br>
<br>
<br>
　13: text_fieldのvalue属性：検索を実行して結果を表示した際、フォームに入力した値を残しておく。  
<br>
　25: sort_linkメソッド：タグに関連づけられた最新アイテム(の中間テーブル)の更新日時で、タグ一覧を並び替え(昇順・降順)。  
<br>
　31: each_with_indexメソッド：コントローラ側で、タグレコード群を1組4つずつの配列に分割し、配列内配列を生成。ループ処理内で1組ずつ取り出す。  
　31-39: tr・td要素：タグ一覧表の1行(ブロック変数group)につき4列ずつのタグ(ブロック変数tag)を表示。  
<br>
　35: link_toメソッド(タグ名リンク)：タグ一覧・検索画面→タグ詳細画面。  
<br>
app/views/tags/index.html.erb  
![画像：4-9-1(D)idea](app/assets/images/readme/4-9-1(D)idea.png)
<br>
<br>
<br>

## 4-10. 並び替え基準：スコア最大4つのうち、タグ詳細画面IDに紐づくスコア
　アプリの機能「2-1-7. タグ(およびリスト)を指定してアイテム表示、スコア順にアイテム並び替え」に関する開発の工夫。  
<br>
/tags/111?list_id=6  
![画像：2-1-7(B)feature](app/assets/images/readme/2-1-7(B)feature.png)
<br>
<br>
<br>
　51-62: tr・td要素：アイテム1つにつき、1行に4つのセルを横並び。アイテム1つに紐づくタグ(最大4つ)が存在する場合、各セル内に表示。各タグに紐づくスコアが存在する場合、各タグの右隣に表示。  
<br>
　54-55: link_toメソッド(タグ名リンク)：リスト詳細画面→タグ詳細画面(遷移時、paramsにリストIDを含める)。  
　56-57: link_toメソッド(タグ名リンク)：アイテム検索画面／タグ詳細画面→タグ詳細画面。  
<br>
app/views/shared/_item_table.html.erb  
![画像：4-1-9(B)idea](app/assets/images/readme/4-1-9(B)idea.png)
<br>
<br>
<br>
　22-23: else文：指定したタグに紐づくアイテムのみ検索。  
　20-21: if文、whereメソッド：指定したタグに紐づく、かつ、指定したリストに紐づくアイテムのみ検索。  
<br>
app/controllers/tags_controller.rb  
![画像：4-10-1(A)idea](app/assets/images/readme/4-10-1(A)idea.png)
<br>
<br>
<br>
　10: number_fieldのvalue属性：リスト詳細画面のタグ名リンクから遷移した場合、そのリストIDを自動入力。または、手動入力も可能。さらに、検索を実行して結果を表示した際、フォームに入力した値を残しておく。  
<br>
　29: sort_linkメソッド：1つのタグに紐づく中間テーブルのスコアカラムで、アイテム一覧を並び替え。  
　タグID(タグ詳細画面のID)とアイテムID(タグに紐づいて表示される各アイテムのID)によって、取得すべき(中間テーブルの)スコアを絞り込み、アイテムごと表示を並び替える。  
<br>
　アイテムと中間テーブル(スコア)は1対多。仮に、sort_linkのソートキー(関連テーブル名＋カラム名)を文法通りにitem_tags_scoreと記述すると、1つのアイテムに紐づく中間テーブルを全て(最大4つ)取得し、同じアイテムを重複して(最大4つ)表示してしまう。タグ詳細画面のIDによって中間テーブルを1つに絞り込めていない状態。  
<br>
　今回は、1つのタグと1つのアイテムに紐づく1つの中間テーブル(スコア)を取得し、並び替えの基準に使いたい。(その上で、1つのタグに紐づくアイテム群を一覧表示し、各アイテムに紐づく複数のタグとスコアも表示したい。)  
<br>
　そこで、並び替え用のクエリ処理をスコープとして定義し、sort_linkの第二引数から呼び出す。ソートキーは、1つの中間テーブルのスコアという意味で、item_tag_scoreとした。  
　並び替え条件は検索オブジェクト@q.sortsに格納。別途、アイテム一覧表示用のレコードは@itemsに格納。  
<br>
app/views/tags/show.html.erb  
![画像：4-10-1(B)idea](app/assets/images/readme/4-10-1(B)idea.png)
<br>
<br>
<br>
　33-34: scopeメソッド：「sort_by_ソートキー_asc／desc」をスコープ名にすることで、ビューのsort_linkメソッドで指定したソートキーと紐づき、クエリ処理を呼び出す。  
　@q = @tag.itemsで読み込んだ1つひとつのアイテムは、1つのタグと1つの中間テーブルに紐づく。  
　その1つの中間テーブルのスコアを使い、アイテム並び替え。 @tag.items.order("item_tags.score ASC／DESC")  
<br>
app/models/item.rb  
![画像：4-10-1(C)idea](app/assets/images/readme/4-10-1(C)idea.png)
<br>
<br>
<br>
