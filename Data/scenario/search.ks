
*ima_0
[pushlog text="→調査" ]
[pushlog text="-" ]
@faname
隣の家が見える。[sp]
……[w]鼻水で汚れている……[l][r]
犬のもののようだ。[sp]
@jump target="*end" 


*ima_1
[pushlog text="→調査" ]
[pushlog text="-" ]
[faname]
みかんの飼っている犬だ。[l][r]
名前はきなこというらしい。[sp]
@if exp="f.ima_1_ev != 1"
@chat_name chara="sabaru"
かわいい～。[sp]
@chat_name chara="sora"
かわいい……[l][r]
それにしても、よく吠えるなぁ。[sp]
@eval exp="f.ima_1_ev = 1"
@endif
@jump target="*end" 



*ima_2
[pushlog text="→調査" ]
[pushlog text="-" ]
[faname]
本棚だ。[sp]
@chat_name chara="mikan"
これは本棚。[sp]
小学生くらいまではよく読んでたけど、[w][r]
今はあんまりねぇ……[sp]
[faname]
なになに……[sp]
[glink font_color="#ffffff" color="black" text="左の本" target="*ima_2_1"]
[glink font_color="#ffffff" color="black" text="右の本" target="*ima_2_2"]
[s]
*ima_2_1
@chat_name chara="mikan"
それは心理学の本だよ。[r]
絵で表されててわかりやすいんだ。[sp]
読む？[w]　……[w]って、[w][r]
今はそれどころじゃないんだった。[sp]
@jump target="*end" 
*ima_2_2
@chat_name chara="mikan"
それは高校数学の本だね。[sp]
文系の私でも理解できて超便利！[l][r]
おすすめだよ。[sp]
@jump target="*end" 

*ima_3
[pushlog text="→調査" ]
[pushlog text="-" ]
;ミニ机
[faname]
勉強道具やテキストが置いてある。[l][r]
……[w]あまり進んでいないようだ。[sp]
@if exp="f.ima_3_ev != 1"
@chat_name chara="mikan"
ゲームの合間にやろうと思ってるんだけど、[r]
全然進まなくて……[sp]
@chat_name chara="sabaru"
わかる～。[sp]
@eval exp="f.ima_3_ev = 1"
@endif
@jump target="*end"


*ima_4
[pushlog text="→調査" ]
[pushlog text="-" ]
;テレビ
[faname]
テレビだ。[l][r]
隣にはゲーム機やらが置かれている。[sp]
@if exp="f.ima_4_ev != 1"
@chat_name chara="sabaru"
そういえば、[sw][r]
例の録画は見れたの？[sp]
@chat_name chara="mikan"
ああ、[sw]おかげさまでね。[sp]
@chat_name chara="sora"
なんの話？[sp]
@chat_name chara="mikan"
毎週欠かさず見てるスイーツ番組があるんだけど、[sw][r]
昨日は準備で忙しくて見れなかったの。[sp]
だから、[sw]ちょうどスケジュールの空いた今日の4時に見るって決めてたんだ。[sp]
@chat_name chara="sabaru"
うんうん。[sp]
見る！[w]　ってずっと言ってたよねえ。[sp]
みかんったら本当に[ruby text="かん"]甘[ruby text="み"]味大好きなんだから。[l][r]
みかんだけに。[sp]
@chat_name chara="mikan"
……[sp]
@chat_name chara="sora"
……[sp]
@chat_name chara="sabaru"
……[w]すいませんでした。[sp]
[faname]
（……[w]さっきのは置いといて、[sw][r]
さばるも甘いもの大好きだと思うけどなぁ）[sp]
@if exp="itemData.pring.get == 0"
手がかり「テレビ」を入手した。[sp]
@else
[iget id="tv"]手がかり「テレビ」を入手した。[sp]
@eval exp="itemData.tv.get = 2"
@eval exp="itemData.pring.get = 0"
手がかり「プリン」が統合された。[sp]
@endif
@eval exp="f.ima_4_ev = 1"
@endif
@jump target="*end"






*end
@hidemess
@chara_hide_all layer="3"
@iscript
f.local = f.nowPlace + "_prc"
@endscript
@jump target="&f.local" storage="scene1.ks" 
