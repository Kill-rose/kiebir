
*ima_0
@faname
隣の家が見える。[sp]
……[w]鼻水で汚れている……[w][l][r]
犬のもののようだ。[sp]
@jump target="*end" 


*ima_1
[faname]
みかんの飼っている犬だ。[w][l][r]
名前はきなこというらしい。[sp]
@jump target="*end" 



*ima_2
[faname]
本棚だ。[sp]
@chat_name chara="mikan"
これは本棚。[sp]
小学生くらいまではよく読んでたけど、[w][l][r]
今はあんまりねぇ……[sp]
[faname]
なになに……[sp]
[glink font_color="#ffffff" color="black" text="左の本" target="*ima_2_1"]
[glink font_color="#ffffff" color="black" text="右の本" target="*ima_2_2"]
[s]
*ima_2_1
この本は心理学の本だよ。[r]
絵で表されててわかりやすいんだ。[sp]
読む？……って、今はそれどころじゃないんだった。[sp]
*ima_2_2


@jump target="*end" 

*end
@hidemess
@chara_hide_all layer="3"
@iscript
f.local = f.nowPlace + "_prc"
@endscript
@jump target="&f.local" storage="scene1.ks" 
