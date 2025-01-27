--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE netslang (
    id integer NOT NULL,
    title text,
    reading text,
    explain text
);

ALTER TABLE public.netslang OWNER TO postgres;

--
-- Name: netslang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE netslang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE netslang_id_seq OWNER TO postgres;

--
-- Name: netslang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE netslang_id_seq OWNED BY netslang.id;


--
-- Name: use_case; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE use_case (
    id integer NOT NULL,
    netslang_id integer,
    example text
);


ALTER TABLE public.use_case OWNER TO postgres;

--
-- Name: use_case_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE use_case_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.use_case_id_seq OWNER TO postgres;

--
-- Name: use_case_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE use_case_id_seq OWNED BY use_case.id;


--
-- Name: comment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY netslang ALTER COLUMN id SET DEFAULT nextval('netslang_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY use_case ALTER COLUMN id SET DEFAULT nextval('use_case_id_seq'::regclass);



--
-- Data for Name: netslang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY netslang (id, title, reading, explain) FROM stdin;
1	安価	あんかー	安価とはスレッド上で、アンカー(リンク)を指す言葉である。ネット掲示板上で他の人の書き込みに対してリンクすることを意味する。
2	あぼーん	あぼーん	あぼーんとはコンテンツなどが削除されたことを意味する言葉である。英語の「a bone」が由来で死骸や骨を意味する。
3	アンチ	あんち	アンチとは特定の企業・個人に対して誹謗中傷を繰り返す人のことを意味する言葉である。英語の「anti」が由来となっており、「対抗する」などの意味がある。
4	垢	あか	垢とはTwitterなどのSNSアカウントを意味する言葉。アカウントを省略した「アカ」という言葉の当て字として使われ始めたのがその語源である。
5	今北産業	いまきたさんぎょう	今北産業とは「今来たから三行で説明してくれ」を省略した言葉である。
6	イッヌ	いっぬ	イッヌとは「犬」を意味する言葉である。犬の愛らしさや可愛らしさを引き立てる意味合いで使われる。
7	イキる	いきる	イキるとは、調子に乗っていることや虚勢を張ったような言動のことを指す言葉である。
8	イチキタ	いちきた	イチキタとは「一時帰宅」を省略した言葉である。
9	逝ってよし	いってよし	逝ってよしとは「どこかへ行ってくれ」と空気を読めない人に対するツッコミとして活用される。2ちゃんねるが生まれる前からあったとされる最古級のネットスラングである。
10	痛車	いたしゃ	痛車とは、見るに堪えない（「痛い」・「痛々しい」）車という意味である。奇抜なデザインが特徴である「イタ車（イタリア車）」との、いわゆる「語呂合わせ」でもある。車体にアニメのキャラクターを描いたり、フィギュアを取り付けたりしている車を指す事もある。
11	インスコ	いんすこ	インスコとは「インストール」の略である。「インストール」のことを「インスコール」と誤表記したことからできたネットスラングで、ここから「アンインストール」のことも「アンスコ」と書かれることもある。
12	うp	うぷ	うpとは「アップロード」の略で、ファイルをサーバーにアップロードすることを意味する。
13	炎上	えんじょう	炎上とは、ネット上のコメント欄などで多くの人から批判や誹謗中傷が繰り返される状態を意味する言葉である。
14	orz	おるつ、おるず	orzとはがっかりしていることを表すアスキーアートの一つです。左を向いて土下座をしている人のように見えることから、落胆や失望、絶望を意味する。
15	オワコン	おわこん	オワコンとは「終わったコンテンツ」を省略した言葉で、ユーザーに飽きられた時代遅れのコンテンツを意味する。
16	音ゲー	おとげー	音ゲーとは「音楽ゲーム」を省略した言葉で、リズムに合わせてボタンを操作したり、体を動かしたりして遊ぶことのできるゲームを指す。
17	おk	おけ	おkとは「OK」の意味である。日本語入力のまま「OK」とタイプすると「おｋ」となることからできたネットスラングである。
18	大きいお友達	おおきいおともだち	大きいお友達とは、児童（少年少女）向けのアニメ、漫画、特撮番組などに夢中になる大人のマニアやオタクのことである。この言葉が生まれたのは1990年代。当時の人気アニメ『美少女戦士セーラームーン』のイベントにおいて、強引な行動を取り、付近にいた子供を泣かせてしまったオタクに対し、イベントに参加していた声優、久川綾が苦言、皮肉として使用したのが発祥とされている（イベントの司会者が口にしていたとの説もある）。略して「大友」とも呼ばれる。
19	乙	おつ	乙とは「おつかれさま」が短縮され、漢字一文字で表せる「乙」となった。インターネット上において挨拶用語の一つとして用いられる。パソコン通信の時代から使用されており歴史は古い。
20	カキコ	かきこ	カキコとは「書き込み」の略で、スレッドやブログなどインターネット上に何か書き込みをすることを意味する言葉である。
21	ガチ恋	がちこい	ガチ恋とは「ガチで恋してる」を省略した言葉である。
22	gkbr	がくぶる	gkbrは「ガクブル」と読み、「ガクガクブルブル」と何かしらの恐ろしい場面に出くわして、震える様子を意味する言葉である。
23	過疎	かそ	過疎とは、インターネットのスレッド上で書き込み数が少ない・活気がないことを表す言葉である。
24	懐古厨	かいこちゅう	懐古厨とは、今あるものを批判し昔を懐かしむような発言ばかりをする人のことを意味する言葉である。
25	カオス	かおす	カオスとは混沌という意味で、「意味不明」「めちゃくちゃ」を表す。
26	囲い	かこい	囲いとは、誰か特定の人物の熱狂的なファンのことを指す言葉である。本来の意味である「庭の囲い」のように、気に入った配信者を自分たちで囲い込むような行動をすることから、熱狂的なファンのことを囲いと呼ぶようになった。
27	かゆうま	かゆうま	かゆうまとは、何かがきっかけとなって精神的に異常をきたした状態のことを意味する。有名なサバイバルホラーゲーム「バイオハザード」における支離滅裂な日記が元ネタで、「かゆい」は体がかゆいということを、「うま」は「うまい」、つまり人間を食べて美味しかったということを表している。
28	キボンヌ	きぼんぬ	キボンヌとは「～を希望する」という意味の言葉である。2000年に行われた夏のシドニーオリンピックで、陸上競技100mハードルに日本代表として出場した「金沢イボンヌ選手」が語源になっているとされている。
29	希ガス	きがす	希ガスとは「気がする」という意味の言葉である。
30	キリ番	きりばん	キリ番とは「キリの良い番号」を省略した言葉である。「2000」や「9999」など、キリがよく見た目もよい数字が「キリ番」と呼ばれている。
31	ktkr	きたこれ	ktkrとは「来た、これ」が語源で、ずっと待ちわびていたことや期待していたことが実現したという意味で使われる言葉である。1980年代～90年代頃に放映されていた参天製薬の目薬「サンテFX」のコマーシャル内において、出演していた織田裕二が目薬を使用した際の爽快感を「キターーーーーーー！！！！」という一言で表現したところからきたとされている。
32	擬人化	ぎじんか	擬人化とは、人間ではないものを人間として描写したもののことを意味する言葉である。絵巻物「鳥獣人物戯画」は日本最古の擬人化作品として知られている。ミッキーマウスや機関車トーマスの作品も擬人化といえる。
33	kwsk	くわしく	kwskは「詳しく」と読み、相手の話や情報に対してもっと詳しく教えて欲しいという意味で使われる言葉である。
34	黒歴史	くろれきし	黒歴史とは、できることならばなかったことにしたい過去の恥ずかしい言動のことを意味する言葉である。
35	くぁwせdrftgyふじこlp	くぁせふじこ	くぁwせdrftgyふじこlpとは、言葉や文字で表すことが不可能な叫びや悲鳴を意味する。２ちゃんねるに「(パソコンの)キーボードの上から三段目と四段目を二本指で左からダーすると」というスレッドが立ち上がったことがきっかけだとされている。
36	ggrks	ぐぐれかす	ggrksとは「それくらいGoogleを使って検索しろ」という意味の言葉である。検索エンジンのGoogle(グーグル)を使って調べることを「ググる」ということから、誰かに対して「自分で調べろ」ということを「ググれ」というようになった。
37	ぐうかわ	ぐうかわ	ぐうかわとは「ぐうの音も出ないほど可愛い」を省略した言葉である。
38	クラスタ	くらすた	クラスタとは、ファンの集まりという意味で使われる言葉である。
39	クリぼっち	くりぼっち	クリぼっちとは「クリスマス」と「ひとりぼっち」という言葉を組み合わせた造語で、クリスマスを一人で過ごすことを意味する言葉である。
40	クレメンス	くれめんす	クレメンスとは、「～してください」「～をください」を意味する言葉である。元プロ野球選手のロジャー・クレメンスさんの名前が由来になったといわれています。
41	ゲハ	げは	ゲハとは、ゲームハードとゲームを表す言葉である。２ちゃんねるのゲームカテゴリの中でも特に情報交換が活発に行われており、ゲーム情報を求めて訪れるネットユーザーが多い。書き込み数が1日約数万回を誇るほどの大規模な板であるが、過激な書き込みが少なくない。
42	香ばしい	こうばしい	香ばしいの本来の意味は、ほんのりとこげたような良いにおいを表す言葉であるが、ネットスラングとしての「香ばしい」は、痛々しい人、頭がおかしい人、意味不明な言動をする気味の悪い人などを表す。
43	誤爆	ごばく	誤爆とは、SNSやメールなどの投稿先・送信先の間違いを意味する言葉である。
44	公開処刑	こうかいしょけい	公開処刑とは、人前で恥ずかしい思いをすることを意味する言葉である。実際の処刑のように身体的な罰を受けたわけではなくても、恥をかくことを公開処刑と表現する。
45	公式が最大手	こうしきがさいおうて	公式が最大手とは、同人の世界でよく使われる言葉で、原作の中に同人的要素が多く二次創作をする必要がないという意味の言葉である。
46	コテハン	こてはん	コテハンは「固定ハンドルネーム」を省略した言葉で、インターネット上で自身を認知してもらうためにつけるニックネームである。
47	サンガツ	さんがつ	サンガツとは「ありがとう」と感謝の意を表す言葉である。「サンキューガッツ」という言葉が省略されて今の「サンガツ」になったと言われています。「ガッツ」は元プロ野球選手の小笠原道大さんのことで、当時小笠原道大さんが「ガッツ」というニックネームで親しまれていたことが由来だといわれている。
48	鯖	さば	鯖とはコンピューターのサーバーのことを意味する言葉である。サーバーを略して「サバ」と呼んだときに同音である魚の「鯖」となることと、一文字で表せる便利さも相まってネットユーザーの間で広まり定着したといわれている。
49	△	さんかく	△とは「〇〇さんカッケー（かっこいい）」の略称として、キャラクターの名前の後につけられることもある。三角形 → さんかっけい → さんかっけー → ～さんカッケー
50	ジト目	じとめ	ジト目とは「じとっとした目つき」の略で、相手を睨むように見る目つきのことで、相手に対しての軽蔑や呆れなどの感情を含む。をじっとりと見つめる時のオノマトペ「じとーっ」が元になったといわれている。
51	自重	じちょう	自重とは、自らを顧みて軽率な言動を慎むことを意味する言葉である。
52	死亡フラグ	しぼうふらぐ	死亡フラグとは、その後の話の展開で死ぬことになるであろう伏線が張られたことを意味する言葉である。
53	してもろて	してもろて	してもろてとは「～してください」と言う意味で、何かをお願いするときに文末で用いる言葉である。関西圏の方は普通に使う言葉だと思いますが、これもインターネット上で使われるスラングとなっています。流行のきっかけは、様々なYouTuberが動画内で口癖のように使っていたことから、全国的に使われるようになったといわれている。
54	情弱	じょうじゃく	情弱とは「情報弱者」の略で、インターネットを十分に活用できない人のことを意味する言葉である。また、インターネット上での情報に疎い人のことを指すこともある。
55	自撮り	じどり	自撮りとは、自分で自分の写真を撮ることを意味する言葉である。元々は「自撮り」という言葉は存在せず、自分の写真を「自分撮り」と呼んでいました。しかし、2013年にアメリカのオックスフォード大学出版局が「2013年の英語の新語」として「セルフィー」を選出したことで、日本でも「セルフィー」という言葉が広まりました。
56	初期ロット	しょきろっと	初期ロットとは、製品が発売して間もない頃に登場したもの意味する言葉である。一般に初期ロットは不具合が多いため一般的には避けるべきとされているが、逆に好んで初期ロットに手を出すことは強者の証しとなる。
57	スレ	すれ	スレとは「スレッド」を意味する言葉で、5ch(旧：2ちゃんねる)などの掲示板のことを指す言葉である。
58	スパダリ	すぱだり	スパダリとは「スーパーダーリン」が語源となっている言葉で、非の打ちどころのないような完璧な男性を意味する。元々は腐女子の間で使用されていた言葉といわれている。スパハニの対義語としてスパハニという言葉も存在する。
59	ステマ	すてま	ステマとは「ステルスマーケティング」の略で、消費者に広告だとばれないように広告することを指します。
60	セルフィー	せるふぃー	セルフィーとは、自分で自分の写真を撮ることを意味する言葉である。元々は「セルフィー」という言葉は存在せず、自撮りのことを「自撮り」と呼んでいました。しかし、2013年にアメリカのオックスフォード大学出版局が「2013年の英語の新語」として「セルフィー」を選出したことで、日本でも「セルフィー」という言葉が広まったといわれている。
61	ソース	そーす	ソースとは「情報源」を意味する言葉である。英語の「source」が語源で「源(みなもと)」という意味である。
62	誰得	だれとく	誰得とは「誰が得をするんだ」を省略した言葉である。
63	ただしイケメンに限る	ただしいけめんにかぎる	ただしイケメンに限るは、文末につける文言で先述した内容は容姿の優れた人のみが許されるという意味で使われる。
64	厨二	ちゅうに	厨二とは「中学二年生」に由来した言葉で、中学二年生頃の思春期の時期にする痛い言動のことやまたそのような言動をとる人のことを意味する。
65	地帝	ちてい	地帝とは地方にある旧帝大を示す言葉である。
66	ちょw	ちょ	ちょwとは「ちょっと待て」を意味する言葉である。
67	直結厨	ちょっけつちゅう	直結厨とは、(主に性的に)直結したがりすぎる人を表す言葉である。自分の欲求に直結しすぎた行動を取る者をさす。
68	チラ裏	ちらうら	チラ裏とは「チラシの裏にでも書いておけ」の略で、自分の日記とかに書けばいいような独りよがりの発言や、ぼくのかんがえたどうでもいい書き込みなどに対して、「チラシの裏にでも書いておけ」という言い回しがなされる。略されて｢チラ裏｣と書かれる事もある。
69	釣り	つり	釣りとはインターネット上に嘘の情報を書き込み、注目を集めることを意味する言葉である。
70	ツイ廃	ついはい	ツイ廃とは「ツイッター廃人」を省略した言葉で、Twitterを高頻度に利用している人のことを意味する。利用する機会は多くても、一日中Twitterを眺めていたり日常生活に支障をきたすレベルではないのであれば、ツイ廃ではなくツイッタラーと判断される。
71	通常運転	つうじょううんてん	通常運転とは、物事や人の性格などがいつも通りということを表す意味である。
72	低浮上	ていふじょう	低浮上とは、SNSを見たり投稿する頻度が低いことを意味する言葉である。
73	DQN	どきゅん	DQNは「どきゅん」と読み、非常識な人を指す言葉である。
74	凸	とつ	凸とは、ネット用語では突撃を意味する言葉である。対象のお店に行ったり、対象の人に連絡を取ったり直接会いに行くことを意味する。
75	トゥンク	とぅんく	トゥンクとは、ときめいている様子を表す言葉である。「トクン」という鼓動を表す効果音がよく使われていてそれが「トゥンク」に変化したとされる。
76	飛ぶぞ	とぶぞ	飛ぶぞとは、主に「精神が飛んでしまうほど美味しい」という意味として食べ物の感想を伝えるときに使われる言葉である。派生して音楽や映画など他人に何かを紹介したい際「最高に良い」といった意味で使われることもある。元ネタは関西ローカルで放送されたバラエティ番組で、元プロレスラーの長州力さんがホタテを食べた時に「食ってみな、飛ぶぞ」とコメントしたことに由来している。
77	なう	なう	なうとは英語の「now」が語源で、「今」「現在」という意味の言葉である。「映画なう」のように使われる。
78	なろう系	なろうけい	なろう系とは、小説の投稿サイト「小説家になろう」に投稿されている作品またその投稿者のことを意味する。「小説家になろう」でよくある設定の作品のことを「なろう系」と呼ぶ場合もある。
79	ナマポ	なまぽ	ナマポとは「生活保護」の略で、日本国の社会保障における救貧制度のことである。経済的に困窮した人の最低限度の生活を保障するセーフティネットとして設計されている。
80	ニキ	にき	ニキとは「兄貴」という言葉を省略した言葉である。ニキは兄貴で、ネキは姉貴を表す。
81	にわか	にわか	にわかとは、知識が乏しいファンや新規ファンのことを指す言葉である。あまり知識がないのに作品や人物、あるジャンルなどについて得意げに語る人を揶揄する目的で使用される。
82	ぬこ	ぬこ	ぬことは「猫」を指す言葉である。
83	ぬるぽ	ぬるぽ	ぬるぽとは「脱力する」「がっかりする」という意味の言葉である。ぬるぽの語源はプログラム処理に異常が発生した時に「NullPointerException」というメッセージが表示され、その「NullPo」の部分だけを取り「ぬるぽ」と呼ばれるようになった。エラーメッセージに対する処置には労力が必要で疲れてしまうので、このメッセージが表示されるとがっかりしてしまうということから、「脱力する」「がっかりする」という意味で使われる。
84	ヌクモリティ	ぬくもりてぃ	ヌクモリティとは、思いやりのある暖かい書き込みやコメントのことを意味する。「ぬくもり」と「クオリティ」を合体させた造語です。
85	ねらー	ねらー	ねらーとは「2ちゃんねらー」の略で、インターネット掲示板である「2ちゃんねる」を使用している人を意味する言葉である。
86	ネカマ	ねかま	ネカマとは「ネットおかま」の略で、男性がネット上で女性を装っていることを意味する言葉である。また、女性がネット上で男性を演じる行為を「ネナベ」と呼ぶ。
87	ネトウヨ	ねとうよ	ネトウヨとは「ネット右翼」の略で、ネット上で右翼的な発言や行動を取る人のことを意味する。
88	ﾉｼ	のし	手を振る動作を表した顔文字で、「バイバイ」や「またね」などお別れをする場面で使われる。元々は「アスキーアート」と呼ばれる、文字・数字・記号のみで作られた絵で使われていましたが、他の顔文字と一緒に使われはじめ、単体でも使われるようになった。
89	BBA	ばばあ	BBAとは、年齢が上の女性（主に30代以上の女性）を意味する蔑称である。
90	禿同	はげどう	禿同とは「激しく同意」という言葉の略で、「同意する」や「同じ意見を持っている」ということを意味する言葉である。
91	8888	ぱちぱちぱちぱち	8888とは拍手の効果音を意味する言葉で、何か称賛したいことがあった時に使われる。8の個数によって拍手の度合いを表現している。元々はニコニコ動画で使われていた表現だといわれている。
92	バイトテロ	ばいとてろ	バイトテロとは、アルバイトスタッフが不適切な行動を現場で行ってSNSに投稿し炎上することを意味する言葉である。
93	BAN	ばん	BANとは「禁止する」という意味の言葉で、SNSなどのアカウントが停止されて利用できない状況にされることを意味する。
94	微レ存	びれぞん	微レ存とは「微粒子レベルで存在している」を省略した言葉で、「可能性は限りなくゼロに近いが、ゼロではない」と、物事に対して僅かな可能性が存在していることを表す。
95	ひよってるやついる？	ひよってるやついる？	「ひよってるやついる？」とは、次の日の学校や仕事に対して仲間たちを鼓舞するように活用される言葉である。2021年に映画化された『東京リベンジャーズ』に登場するこのセリフで、仲間を鼓舞してチーム一丸となって敵に立ち向かっている姿が反響を呼びSNSを中心に使われている。合わせて「いねぇよな？」を使いましょう。
96	ぴえん	ぴえん	悲しんでいる様子を表す際に使う言葉である。
97	ふつくしい	ふつくしい	ふつくしいとは「美しい」という意味の言葉である。アニメのキャラクターが発した「美しい」と言う言葉が、空耳で「ふつくしい」に聞こえてしまったことからインターネットを中心として広まったとされる。
98	腐女子	ふじょし	腐女子とは、ボーイズラブ(BL)を好む女性を意味する言葉である。
99	フラグ	ふらぐ	フラグとは、この後に起こる展開が予想できる描写のことを意味する言葉である。ドラマや漫画などの創作物の中で「これからどうなるかがなんとなく予想できるような演出」を意味する。
100	フロリダ	ふろりだ	フロリダとは「風呂に入るから離脱」の略称で、その名の通り「お風呂に入ってくるから今の作業を少し中断します」という時にSNSやチャットなどで使われる。
101	FF外	えふえふがい	FF外とは「フォロー・フォロワーの関係ではない外部ユーザー」が省略されてできた言葉で、相手のSNSアカウントをフォローしていない・されていない赤の他人の関係性のことを意味する。
102	ブラクラ	ぶらくら	ブラクラとは「ブラウザクラッシャー」の略で、ブラウザやOSの脆弱性・バグを利用して異常を発生させるスクリプト言語もしくはHTML文書を含むWebページのことである。ブラクラを含むWebページを開いてしまい、ブラクラが実行されてしまうことを、「ブラクラを踏む」と言う。
103	ペロリスト	ぺろりすと	ペロリストとは、感情が良い意味で昂った時に「ぺろぺろ」という言葉でその感情を表現する人のことを意味する言葉である。「ぺろぺろ」と「テロリスト」を合わせて「ペロリスト」と呼ぶようになったとされる。
104	ポチる	ぽちる	ポチるとは、ネットショッピングで商品を購入することを意味する言葉である。購入ボタンを押すことを表す。
105	マジレス	まじれす	マジレスとは「真面目にレスポンスをする」を省略した言葉である。ある発言に対して本気でコメントを返すことを意味する。
106	MAD	まっど	MADとは、既存の映像に音楽や画像などを合わせて個人が再編集した動画のことである。MADは英語の mad(発狂している) が語源となっている。
107	マジキチ	まじきち	マジキチとは「マジでキチガイじみてる」の略で、常軌を逸した発言・行動などに対して、「マジでキチガイじみてるからやめろ」の意で突っ込みとして使用される言葉である。別の言い方として「あたおか」（あんた（ら）あたまおかしい）もある。
108	ミリオタ	みりおた	ミリオタとは「ミリタリーオタク」の略で、軍事に関する知識や情報に詳しい人を指す言葉である。
109	無理ゲー	むりげー	無理ゲーとは、難易度が高くてとてもじゃないが太刀打ちできないということを意味する。「無理」と「ゲーム」が合体した言葉である。
110	無敵の人	むてきのひと	無敵の人とは、失うことが何もない人のことを意味する言葉である。一般的に無敵の人と呼ばれる人は、職・財産・大切な人やものなど失うものがないからこそ罪に問われることに対して恐怖心がなく、犯罪を犯すことに抵抗がないといわれています。
111	胸熱	むなあつ	胸熱とは「胸が熱くなるな」の略で、感動して胸が熱くなることを意味する言葉である。
112	メシウマ	めしうま	メシウマとは「他人の不幸で飯がうまい」が省略された言葉である。「これは良い気味だ」という意味で、何か良いことがあった時に使われる。
113	飯テロ	めしてろ	飯テロとは、食欲が沸くような写真や動画を投稿することを意味する。
114	メタ発言	めたはつげん	メタ発言(またはメタい)とは、アニメや漫画の登場人物が視聴者や観客に向かってセリフを発する表現方法のことを意味する。また、作者・製作者側・視聴者側しか知り得ないようなことについて話すことも意味する。語源は、古代ギリシャ語の「メタ」という言葉で、「後に」という意味が発展して「〜を超越した」という意味に変化した。
115	もちつけ	もちつけ	もつちつけとは「もう少し落ち着け」が省略された言葉である。
116	喪女	もじょ	喪女とはモテない女性のことを意味する言葉である。「モテない女」が由来で、ネガティブなイメージのある「喪」を用いた「喪女」へと変化した。どちらかと言えば自虐的でネガティブな言葉として使われる。喪女の男性版は「喪男(もお、もおとこ)」。
117	もうダメぽ	もうだめぽ	もうダメぽとは「もうダメっぽい」のタイプミスで、一般的に「もうだめだ…」「＼(^o^)／ｵﾜﾀ」などの意味で用いられる。
118	野生の公式	やせいのこうしき	野生の公式とは、作者の作品だとしか思えないようなクオリティの高い二次創作作品やファンアートのことを指す。ここでの「野生」は人気ゲーム「ポケットモンスター」が由来であるといわれている。類義語として「野生のプロ」という言葉がある。
119	夢女子	ゆめじょし	夢女子とは、アニメや漫画などの好きな男性キャラクターと自分が恋愛関係にある妄想をする女性のことを意味する言葉である。
120	ようつべ	ようつべ	ようつべとは「YouTube」のことを意味する言葉である。「YouTube」をローマ字読みし、ようつべと呼ばれることがある。
121	リア充	りあじゅう	リア充とは「現実すなわちリアルの生活が充実している人」を意味する言葉である。
122	履修	りしゅう	履修とは、ある作品に関連するものの情報を集めたりチェックすることを意味する言葉である。特定の作品についての知識を高めるという意味合いで用いられる。
123	リムる	りむる	リムるとは、TwitterやInstagramなどのSNSでフォローしていたアカウントのフォローを外すことを、除去するという動詞「リムーブ（remove）」を用いて表現するようになった言葉である。
124	ループもの	るーぷもの	ループものとは、同じシーンを繰り返すアニメや小説のことである。同じシーンを繰り返すことで、そのシーンの重要性を強調することができる。
125	恋愛フラグ	れんあいふらぐ	恋愛フラグとは、この後恋愛関係に発展する可能性がある予兆を意味する言葉である。
126	レスバ	れすば	レスバとは「レスバトル」を省略した言葉で、ネット掲示板やSNSで他人と口論することを意味する言葉である。反応・応答を意味する「レスポンス」と戦いを意味する「バトル」が組み合わさってできたとされる。
127	ロストテクノロジー	ろすとてくのろじー	ロストテクノロジーとは、過去に実存した優れた技術のことで、何らかの理由により後の世に伝えられず失われてしまったものを指す言葉である。 たとえば、戦艦「大和」の分厚い装甲をリベット留めする技術や、電子部品を一切使わない昔の機械式計算機などである。
128	ワロタ	わろた	ワロタとは、笑ったという意味の言葉である。笑った→ワラタ→ワロタ→ワロスと変化の第三過程で生まれたとされる。
129	www	わらわら	wwwとは「(笑)」を意味する言葉で、面白いことがあった時に使われる。
130	wktk	わくてか	wktkとは「わくてか」と読み、何かをわくわくと楽しみにしている様子を表す言葉である。
131	わこつ	わこつ	わこつとは「枠取りお疲れ様」の略で、主にニコニコ生放送内で使われる言葉である。
132	割れ	われ	割れとは「Warez(ウェアーズ・ワレズ)」から派生した、日本におけるネットスラングで、インターネットからのダウンロードやクラッキングなどの不正な手段を通じて、市販ソフトウェアを非合法にコピー・配布・販売・使用を行うこと、および、非合法にコピー・使用されたソフトウェアそのものを指す言葉である。
133	ンゴ	んご	ンゴとは、文末につける語尾のようなもので特に意味はない。ンゴを文の末尾につけることでちょっとおどけた印象にするための言葉である。
134	んc	んしー	んｃとは「nice cut」の略で、実況プレイ動画のコメントで使われることが多い。キーボードが全角かな入力の状態でnice cutの頭文字「NC」を入力した際に「んｃ」と表示されるのをそのまま利用したもの。一度プレイしたダンジョンや雑魚モンスター戦など冗長的に繰り返されるシーンをカットして見やすく工夫されている編集に対し”ナイスカット”という意味合いで使われる。
135	完全に理解した	かんぜんにりかいした	製品を利用をするためのチュートリアルを完了できたばかりで、入門しただけでほぼ何も分かっていない状態であることを意味する言葉である。
136	助かる	たすかる	助かるとは、とくにバーチャルYouTuber（VTuber）の界隈において、配信中に何らかのアクシデントが起きた際に「◯◯助かる」とフォローする決まり文句として定着している。「ちょうど切らしてた、助かる」とセットで使用されることが多い。「魅力的なものを見て、気分が高揚した」→「喜びのあまり延命した」→「（命や情緒が）助かった」というニュアンスを持つようになったといわれている。
\.






--
-- Name: comments_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
-- Name: netslang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('netslang_id_seq', 3, true);


--
-- Data for Name: diaries; Type: TABLE DATA; Schema: public; Owner: postgres
-- Data for Name: use_case; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY use_case (id, netslang_id, example) FROM stdin;
1	1	安価スレで面白いレスを貰った。
2	1	安価をつけてレスをする。
3	2	昨日閲覧できたスレが今日見たらあぼーんされてた。
4	2	あぼーん機能を使って不快な書き込みを非表示にした。
5	3	アンチのことなんて気にすんなよ。
6	3	アンチコメントの内容があまりにも酷い。
7	4	Twitter垢のパスワードを忘れてログインできない。
8	4	インスタグラムの垢を使い分けている。
9	5	今スレッドに来たばかりなので、これまでの流れを三行で教えてほしい。
10	5	風呂入ってて出遅れた。今北産業！
11	5	説明が長すぎるので今北産業。
12	6	最近話題のイッヌが可愛い。
13	6	イッヌが散歩に行きたがらない。
14	7	何イキっとんねん。
15	7	自分最近ちょっとイキりすぎちゃう？その態度何とかしたほうがええで。
16	8	今日はすごく忙しくて、イチキタしてまたすぐ出かけなきゃ。
17	10	アニメキャラが描かれた痛車が走っていた。
18	11	ちょっとインスコしてくる。
19	12	素敵な音楽を作ったうp主に感謝。
20	13	母親が小学生である娘に鼻ピアスをさせたことが原因で炎上した。
21	13	アルバイトの学生が業務用の冷蔵庫で遊んでいる画像などを投稿し、それが炎上したことは大きなニュースになった。
22	13	有名人が単なる骨折で入院しているだけなのに重病だと偽ったことで「不謹慎」や「実際に病気になっている人の気持ちを考えてほしい」といった理由で炎上した。
23	14	美容院で前髪切られ過ぎちゃった。 orz
24	14	この前のテスト、山が外れて散々な結果だった。orz
25	14	orz 〇〇遊園地のチケット、有効期限切れてた。
26	15	好きなアニメがオワコン扱いされた。
27	15	日本の就活オワコン。
28	15	タピオカはまだオワコンではない。
29	16	音ゲーにハマりすぎて毎日ゲーセン通いをしている。
30	20	初カキコです。よろしくお願いします。
31	20	記念カキコ。
32	22	この写真こわっ……gkbr
33	22	うーわ、まじか((( ；ﾟДﾟ)))gkbr
34	22	それはヤバい( ｡ﾟДﾟ｡)ｶﾞｸﾌﾞﾙ
35	23	今日は過疎ってる。
36	23	なんか最近過疎っててつまらない。
37	23	過疎ってるけど、他に流行してるSNSあるの？
38	24	○○は初代が一番よかったと言っているあいつは懐古厨だ。
39	24	リメイク後のゲームを糞ゲーだと感じる私は懐古厨だ。
40	25	部屋の中がぐちゃぐちゃに散らかっていてカオス。
41	25	イベントがあまりにもカオスだったので途中で帰った。
42	25	もはやカオス。
43	26	囲いがいると通行の邪魔
44	26	普通のファンなのに囲いとか言われたくない
45	26	囲い厨滅べ
46	27	ゾンビ映画を見たら「かゆうま」を思い出してゾッとした。
47	27	眠い…でも課題やらなきゃ…でも眠い…かゆうま…。
48	28	分かりづらいから画像キボンヌ
49	28	話だけではなく画像キボンヌ
50	29	これは○○な希ガス
51	29	俺はこっちの方がいい希ガス
52	29	それは間違っている希ガス
53	30	安ホームページを見たら偶然キリ番達成できた。
54	30	フォロワーが5001人に！キリ番見逃した…。
55	31	ktkr！！！
56	31	ｷﾀ(･∀･)ｺﾚ
57	31	ｷﾀ━━━━(*ﾟ∀ﾟ*)━━━━!!
58	32	擬人化のアニメに嵌まってしまい、昨日も徹夜でいくつもの作品を観てしまった。
59	32	形あるものだけでなく、概念など実体がないものも擬人化できるので可能性が無限大だ。
60	32	私が愛犬に毎日話しかけるのも、もしかしたら擬人化されて人間のような会話が出来ると夢見ているからかも知れない。
61	33	その説明もっとkwsk
62	33	kwsk話してもらおうか。
63	33	kwskすると長くなるけどいい？
64	34	突如黒歴史を思い出してしまって恥ずかしさに耐えられない。
65	34	自身のSNSを見返していたら黒歴史と呼べる投稿が残っていた。
66	35	『ねぇ、この前のLINE何？先週一緒にご飯なんて行ってないけど』『くぁwせdrftgyふじこlp』
67	35	部屋にゴキブリが出てきくぁwせdrftgyふじこlp
68	36	そんなことggrks
69	36	聞く前にggrks
70	37	ご当地キャラクターがぐうかわすぎてヤバイ
71	39	クリスマスまでにフラれてクリぼっちになっちゃうんじゃない？ww
72	40	画像クレメンス。
73	40	助けてクレメンス。
74	40	テストの詳細教えてクレメンス。
75	41	ゲハに染まった者達に優劣はない。
76	43	あの投稿、誤爆なんじゃね？
77	43	誤爆投稿してしまって恥ずかしい。
78	44	恥ずかしい写真を公開するなんて公開処刑だ！
79	44	披露するネタが場違いですべり、もはや公開処刑だ。
80	44	これってもう公開処刑じゃん！
81	45	新作のネタ考えてたけど、公式が最大手すぎてもう無理。
82	45	公式が最大手すぎて、俺ら必要なくない？
83	46	良いコテハンが思い浮かばない。
84	46	コテハン推奨
85	46	コテハン禁止
86	47	『これってどういう意味？』『○○ってことだよ』『サンガツ』
87	47	知らなかった、サンガツ。
88	47	『○○は○○ということだよ』『はぇーサンガツ』
89	48	通信が混雑して鯖落ちした。
90	49	本田△
91	50	彼女とのデートに遅刻をしてしまい、ジト目で見られた
92	50	(≡ω≡.)
93	51	私はいらないことまで喋ってしまいがちなので、話し手に回るのは自重してしばらく聞き役に徹しようと思う。
94	51	健康診断の結果が芳しくなかったので、しばらくお酒は自重する。
95	51	先日あった面白いエピソードを話したかったが、あまりにも場の空気が重かったので自重した。
96	52	死亡フラグが立った。
97	53	突然大声を出すのはびっくりするからやめてもろて。
98	56	新型の iPhone が発売されたが、初期ロットは避けようかな。
99	57	恋愛相談のスレ
100	57	夫婦に対する愚痴を言うスレ
101	57	スレで相談してもいい？
102	57	このスレって今誰もいない？
103	58	私の彼氏は俗に言うスパダリだ。
104	58	スパダリをゲットするために自分磨きを頑張る。
105	59	どさくさに紛れてステマすんな。
106	61	それって本当？ソースはあるの？
107	61	ソースは友達の話だけど、あいつは信用できる。
108	61	この情報のソースはここ。
109	62	それ誰得情報だよ。
110	62	誰得なものを生み出してしまった。
111	62	これは誰得展開なの？
112	63	＊ただしイケメンに限る
113	64	最近友達の言動が厨二病っぽい。
114	64	厨二病だった頃の日記帳を読み返すのは、とても勇気がいることだ。
115	64	いつまで経っても厨二病が治らないあの人は、周囲の人から白い目で見られている。
116	70	ツイ廃しすぎて留年した。
117	70	この人常にタイムラインに出てくるしツイ廃なんじゃ。。
118	70	ツイ廃から脱出したいのであれば新しく趣味を見つけるのも効果的だ。
119	71	たくさん休暇を取ったから、今日から通常運転だ。
120	71	推しは今日もかっこよくて通常運転だ。
121	71	今日はミスが多いと言うけれど、あれが彼女の通常運転だよ。
122	72	新しい趣味ができたので最近はTwitterにも低浮上気味だ。
123	72	彼女はほとんどSNSを利用しないので、低浮上というより無浮上だ。
124	73	そこのドンキ、夜になるとDQN大集合だよね。
125	73	アトラクションに並んでいたらDQNに割り込みされた。
126	73	あの子の名前、DQNネームでかわいそう。
127	74	明日あそこに凸してくる。
128	74	明日開店凸する。
129	74	あの人ヤバいから凸してみるww
130	75	推しがかっこよすぎてずっとトゥンクしてる。
131	75	この絵本当に可愛くてトゥンクだね。
132	75	○○ちゃんの笑顔が最高トゥンク。
133	76	このパスタ食ってみな、飛ぶぞ。
134	77	デートなう。
135	77	調べてるなう。
136	78	好きななろう系の小説のアニメ化が決定した。
137	78	彼はなろう系小説を投稿したことがきっかけで作家になった。
138	80	日本史に詳しいニキ（ネキ）。
139	80	サバゲーに自信ニキ、解説はもういいよ。
140	81	勇気を出してオフ会に行ったのに、にわかばかりだった。
141	81	最近にわかファンが増えてチケットが取れなくなってしまった。
142	82	ぬこかわいいよぬこ。
143	82	こぬこが生まれた。
144	82	ぬっこぬこにしてやんよ。
145	83	「ぬるぽ」「ガッ」
146	84	ヌクモリティ溢れるコメント、ありがとうございました。
147	84	久しぶりの母の手料理、ヌクモリティハンパない。
148	84	LINEやメールも便利だけど、手紙の方がヌクモリティあっていいよね。
149	85	ねらーのせいでコメント欄が荒れている。
150	85	社会人になってねらーを卒業した。
151	85	ねらーだけど日常会話の言い回しには気をつけている。
152	87	ネトウヨは○○と主張することが多い。
153	88	バイバイﾉｼ
154	89	電車の中でBBAに足踏まれた。
155	89	自分BBAだから、若い子の流行についていけない。
156	89	BBA可愛いな。結婚してくれ
157	90	その意見には禿同
158	90	それマジ禿同
159	90	はげど！
160	91	8888
161	91	88888888
162	91	88888888888888
163	92	バイトテロは企業にとってもリスクである。
164	93	SNSのアカウントに対して BAN されることを「垢BAN」という。
165	94	今日、定時で帰れる可能性は微レ存…。
166	94	ツチノコが存在する可能性は微レ存だ。
167	94	こんな私のことを好きと言ってくれる人も微レ存。
168	95	明日の会議、ひよってるやついる？　いねぇよな！？
169	97	すごい！この景色は今までに見たことがないほどふつくしい…
170	97	この絵は素晴らしい作品だ。ふつくしい。
171	97	プラモデルが完成した。今までになくふつくしい。
172	98	コ腐女子の会話を聞いてしまった。
173	98	もうすぐ30歳だが、いまだに腐女子をしている。
174	99	この敵は強すぎるから、成長するフラグだわ。
175	99	あー、フラグ立っちゃった！平和な暮らしも終わりか。
176	99	死亡フラグ
177	99	恋愛フラグ
178	100	フロリダしてくる～
179	100	フロリダ！
180	101	FF外から失礼します。僕もマーケティングについて興味があります。よろしくお願いします。
181	101	FF外からの反応も大歓迎。
182	103	俺は推しをぺろぺろしたいペロリストだ。
183	103	ペロリストの考えていることは理解できない。
184	104	アップルの新商品をポチった。
185	105	マジレスすると勉強はある程度しておくにこしたことはない。
186	105	冗談だと分からずマジレスしてしまった。
187	105	ネタにマジレスするのやめて。
188	106	別の作品に出ている同じ声優を活用したMADで笑ってしまった。
189	106	愛のあるMADを見つけた。
190	106	1年かけて作成された大作の手書きMADに感動した。
191	109	今日発売のゲーム、楽しみにしてたのに無理ゲーすぎる。
192	109	明日までにこの量の宿題は無理ゲーすぎる。
193	109	急にプレゼンを代わってくれなんて無理ゲーだ。
194	110	誰しも無敵の人になる可能性があるから、決して他人事ではない。
195	110	無敵の人が抱えている問題について社会全体で考えていかなくてはならない。
196	112	この展開はメシウマ！
197	112	メシウマ展開を希望！
198	112	メシウマになると嬉しい。
199	113	飯テロ写真を投稿された。
200	113	飯テロすんな、お腹空いてきた。
201	114	今日の◯◯、メタい発言多いね。
202	114	あのメタいセリフ、アドリブらしいけど大丈夫なのかな？
203	115	興奮しすぎ。甘いもの食べてもちつけ。
204	115	みんな、もっともちつけ！
205	116	姉がもうすぐ30歳になるが、いわゆる喪女らしく、妹としてとても心配している。
206	116	彼女は現実では喪女だが、ネット上では人気配信者として男性ファンが多くいる。
207	116	わたしは根暗で腐女子なので俗に言う喪女ってやつかもしれない。
208	119	夢女子は夢小説を好んで読む。
209	119	夢女子向けの小説を趣味で書いている。
210	119	夢女子なので、つい妄想ばかりしてしまう。
211	120	Youtubeを検索するには、ローマ字で「ようつべ」と入力するといいよ。
212	121	職場がリア充すぎて羨ましい。
213	121	バレンタインになると毎回リア充に爆発してほしくなる。
214	121	リア充になりたい。
215	122	原作もとても良いので、絶対に履修するべきだ。
216	122	好きな作品のアニメ化が決まったので、漫画を再履修中だ。
217	122	漫画は未履修だけど、アニメは履修済み。
218	123	この人のインスタ、投稿内容が変わってきたからリムろうかな？
219	125	また会いたいって言われたから、これは恋愛フラグ決定だ。
220	125	恋愛フラグだと思ったのに、勘違いだった。
221	126	密かにこのレスバを見守っているが、終わりが見えない。
222	126	レスバに発展したがこれ以上不毛なやり取りをしたくない。
223	128	久々にワロタ
224	129	この漫画最高に面白いwww
225	129	道でバナナの皮踏んで滑ったwww
226	130	推しのイベント楽しみでわくてかしてる。
227	130	今日の放送わくてかして待ってる。
228	130	写真待ってるねwktk
229	133	遊びに行きたいンゴ
230	133	それダサすぎるンゴ
231	133	ごめンゴww
232	135	あー、そーゆーことね、完全に理解した。
233	136	公式からの新情報助かる。寿命が延びましたわ。
234	136	推しのSNS投稿たすかる。
235	136	◯◯くんの笑顔見られた。ちょうど切らしてた、助かる。ちょっとしたミスなんか気にしないで。
\.


--
-- Name: use_case_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('use_case_id_seq', 7, true);



--
-- Name: netslang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY netslang
    ADD CONSTRAINT netslang_pkey PRIMARY KEY (id);


--
-- Name: use_case; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY use_case
    ADD CONSTRAINT use_case_pkey PRIMARY KEY (id);



--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--