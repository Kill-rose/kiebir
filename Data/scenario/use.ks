*room1_1
@if exp="f.itemData.room1_key.get == 1"
[winame]
#シオ
引き出しの鍵かな……？[p]
[faname]
#
引き出しをゆっくりと開けてみた。[p]
中には整然とした資料とメモの束が並んでいる。[p]
[winame]
#シオ
師匠の文字だ。[p]
……航路の記録をまとめていた？[r]
一体なぜ……。[p]
詳しく調べてみるか。[p]
[faname]
#
[font color="#78f542"]アイテム「航路ログの写し」を手に入れた。[p]
@else
[winame]
#シオ
う～ん、これで何をどうするっていうんだ？[p]
@endif
@jump target="*end" 


*staff_room
#鯖原
特に手がかりになりそうなものは見当たらないな……[p]
[chara_show name="kanda" time="300" layer="2" left="260" top="30"]
#神田
勝手に漁ったら怒られますからね。[p]
@jump target="*end" 

*classroom
[if exp="f.ev_classroom == 1"]
[winame]
#鯖原
う～ん……引き出しとか探してみるか？[p]
[faname]
#
～しばらくして～[p]
[chara_show name="kanda" time="300" layer="2" left="260" top="30"]
[winame]
#神田
なんもないですね。[p]
#鯖原
待て！　これはクラスで地味な練馬さんの机だが……[r]
怪しげな漫画が……！　手描き……だとっ！？[p]
[chara_part name="kanda" eye="half" brow="normal"]
#神田
触れてやるな。[p]
[chara_hide name="kanda" time="500"]
[else]
[chara_show name="kanda" time="300" layer="2" left="260" top="30"]
[winame]
#鯖原
神田はどこで寝てたんだ？[p]
#神田
枕だけ持ってきて床で寝てました。[r]
[chara_part name="kanda" eye="nico" mouth="nico" whiteEye="false"]
最近はあったかくていいですね。[p]
#鯖原
う～ん……あっ、これは？[r]
鍵みたいなの入ってるけど。[p]
[chara_part name="kanda" eye="surp" mouth="normal" whiteEye="normal"]
#神田
あ、僕の部屋の引き出しの鍵じゃないですか。[r]
なんでこんなところに……[p]
#鯖原
いや、こっちのセリフだよ！[p]
[faname]
アイテム入手『神田の鍵』[r]
神田の部屋の引き出しの鍵らしい。[p]
[eval exp="f.itemData.kanda_key.get = 1"]
@eval exp="f.ev_classroom = 1"
[endif]
@jump target="*end" 



*end
[chara_hide layer="2" name="kanda" time="200" wait="true"]
@iscript
f.local = f.nowPlace + "_prc"
@endscript
@jump target="&f.local" storage="scene1.ks" 