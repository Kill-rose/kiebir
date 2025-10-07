
;→コメント
;アイテム・情報の情報を記述
; chat_name → 喋っているキャラクター名

;人物情報
*yuki
[faname]
@chat_name chara="yuki"
（私）[sp]
優柔不断、押しに弱い、酒と死体に耐性なし、すぐ倒れる……[sp]
@chat_name chara="yuki"
（うう、自分になると悪いところばかり目に付く）[sp]
@jump target="*end" 




;アイテム情報

*letter
@freeimage layer="4"
@bg storage="back.png" time="500" 
@image layer="4" storage="frame_overlay.png" left="0" top="504" folder="image" visible="true" time="0"
@chara_show layer="3" name="yuki" 
@chat_name chara="yuki"
この誕生日パーティへの招待状だね。[sp]
@chara_show layer="3" name="aru" 
@chat_name chara="aru"
どうやら、２日も泊めてくれるらしいですよ。[sp]
@chat_name chara="yuki"
いやあ、綺麗なところで嬉しいなぁ。[w][r]
庭を見た？[w]　噴水まであったよ！[sp]
@chat_name chara="aru"
しかし、[r]
まさかこんな山奥だとは思いませんでした。[sp]
帰るの大変ですね。[sp]
@chat_name chara="yuki"
……またあの橋、[r]
渡らなきゃいけないのか……[sp]
@chat_name chara="aru"
背負っていきますよ。[sp]
@chat_name chara="yuki"
……は、恥ずかしい……[sp]
@chat_name chara="aru"
それにしても、金持ちの誕生日パーティにしては[r]
人が全然いませんね。[sp]
俺たちと露崎以外に4人しかいないんですって。[sp]
@chat_name chara="yuki"
まあ、人付き合いが好きなタイプじゃないからねぇ。[sp]
@chat_name chara="aru"
ああ、友達が少ない……[sp]
@chat_name chara="yuki"
そういうことあんまり言うもんじゃないよ。[sp]
@chat_name chara="aru"
すいません。[sp]
@jump target="*end" 



*end
;@freeimage layer="4"
;@bg storage="back.png" time="500"
;@image layer="4" storage="frame_overlay.png" left="0" top="504" folder="image" visible="true" time="0"
@chara_hide_all layer="3"
@hidemess
@iscript
f.local = f.nowPlace + "_prc"
@endscript
@jump target="&f.local" storage="scene1.ks" 
