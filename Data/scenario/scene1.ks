;ティラノスクリプトサンプルゲーム

*start

[cm]

[start_keyconfig]


;[bg storage="room.jpg" time="100"]

;メニューボタンの表示
;@showmenubutton

@jump target="*skip"


@wai time="1000"


[image layer="0" storage="frame2.png" page="fore" visible="true" folder="bgimage" time="500" wait="false" ]

[bgadv st="ima.png"]
@playbgm storage="はっぴいばあすでいつーゆー.ogg" loop="true"
@wai time="1000"




[winame]



@image layer="4" storage="frame_overlay.png" left="0" top="504" folder="image" visible="true" time="0"

;スチル
[faname]
#
そらみ！[l][r]
誕生日おめでと～！[sp]
@chat_name chara="sora"
ありがとう！[sp]
こんな豪華なパーティ、準備に時間かかったでしょ！[sp]
@chat_name chara="mikan"
ふふ、それだけじゃないよ！[sp]
なんと、ケーキも用意したんだ！[sp]
ええっ！[sp]
;スチル
じゃあ……[w][r]
あやし、[sw]持ってきて！[sp]
@chat_name chara="ayashi"
は～い。[sp]
@hidemess
@wai time="1000"
@faname
……[sp]
@hidemess
@wai time="1000"
@chat_name chara="ayashi"
あ、[sw]あれ？[w][r]
ケーキが……[sp]
@chat_name chara="sorami"
どうしたの？[sp]
;スチル　わらわら集まるみんな
@chat_name chara="mikan"
け、[sw]ケーキが食べられてる！[sp]
@chat_name chara="sabaru"
そんなぁ！？[sp]
@chat_name chara="rokisa"
いったい誰が……[sp]
@chat_name chara="mikan"
許せない……[sp]
頑張って用意したケーキを食べるなんて、[sw][r]
友達だとしても許せない……[sp]
私の名にかけて、[sw][r]
犯人を見つけ出す！[sp]
ええ～っ！？[sp]


*skip

@bg storage="back.png" time="500" 
@image layer="4" storage="frame_overlay.png" left="0" top="504" folder="image" visible="true" time="0"

@eval exp="f.nowPlace = 'ima'"
[bgadv st="1f_rouka.png"]



@hidemess
@image layer="12" storage="watch/1.png" page="fore" visible="true" folder="image" time="500" x="18" y="42" wait="false"
@image layer="13" storage="purpose.png" page="fore" visible="true" folder="image" time="500" x="18" y="239" wait="false"
@image layer="13" storage="task.png" page="fore" visible="true" folder="image" time="500" x="18" y="426" wait="false"
@ptext layer="14" text="&f.story" x="18" y="278" size="20" color="white" overwrite="true" page="back" align="left" width="168" 
@trans time="500" layer="14"
;ストーリーできてからつくる
@freeimage layer="15" 
@ptext layer="15" name="task" text="□ 他の３人に話しかけよう" x="18" y="466" size="20" color="white" overwrite="true" page="back" width="168" 
@trans time="500" layer="15"


@playbgm storage="taisyou-roman-tantei_Loop.ogg" loop="true"
*ima
@eval exp="f.nowPlace = 'ima'"
[bgadv st="ima.png"]

@if exp="f.ev_ima != 1"
    [winame]
    @chat_name chara="mikan"
    ……[w]誰だ……[w][r]
    いったい誰が……！[sp]
    @chat_name chara="sabaru"
    ひええ、[sw]大変なことになっちゃった！[sp]
    @chat_name chara="ayashi"
    ごめんね、[sw]そらみ。[sp]
    みかん、[sw]この日のために沢山準備してきてたから……[l][r]
    だいぶショックなんだと思う。[sp]
    @chat_name chara="sora"
    うん……[l]あれ、[sw]ろきさは？[sp]
    @chat_name chara="ayashi"
    キッチンの方に向かったよ。[sp]
    じゃあ、[sw]自分もいろいろ見てくるよ。[l][r]
    なんかあったら呼びに来て。[sp]
    @chat_name chara="sora"
    （心苦しいけど……[w][r]
    調査、[sw]してみるか……）[sp]

    @hidemess
    @eval exp="f.select_item = 0"
    @eval exp="f.ev_ima = 1"
@endif

*ima_prc
[prc_set]

;探索箇所設定
;カーテン
[locate x="205" y="23"]
[clickable opacity="0" storage="&f.target_ad" width="80" height="210" target="*ima_0"]
[locate x="285" y="23"]
[clickable opacity="0" storage="&f.target_ad" width="104" height="259" target="*ima_0"]

;白いなにか
[locate x="217" y="232"]
[clickable opacity="0" storage="&f.target_ad" width="68" height="53" target="*ima_1"]

;本棚
[locate x="422" y="91"]
[clickable opacity="0" storage="&f.target_ad" width="162" height="121" target="*ima_2"]
[locate x="422" y="212"]
[clickable opacity="0" storage="&f.target_ad" width="131" height="74" target="*ima_2"]

;ミニ机
[locate x="553" y="212"]
[clickable opacity="0" storage="&f.target_ad" width="80" height="86" target="*ima_3"]

;テレビ
[locate x="646" y="76"]
[clickable opacity="0" storage="&f.target_ad" width="189" height="155" target="*ima_4"]

;テレビの前のかばん
[locate x="719" y="285"]
[clickable opacity="0" storage="&f.target_ad" width="86" height="63" target="*ima_5"]

;クッション
[locate x="526" y="381"]
[clickable opacity="0" storage="&f.target_ad" width="239" height="123" target="*ima_6"]

;犬ハウス
[locate x="805" y="231"]
[clickable opacity="0" storage="&f.target_ad" width="270" height="146" target="*ima_7"]
[locate x="835" y="210"]
[clickable opacity="0" storage="&f.target_ad" width="240" height="21" target="*ima_7"]

;犬ハウスの上
[locate x="841" y="158"]
[clickable opacity="0" storage="&f.target_ad" width="234" height="45" target="*ima_8"]

;ぬいぐるみ
[locate x="914" y="63"]
[clickable opacity="0" storage="&f.target_ad" width="100" height="89" target="*ima_9"]

[s]



*kittin
[eval exp="f.nowPlace = 'kittin'"]
[bgadv st="kittin.png"]

@if exp="f.ev_kittin != 1"
    [winame]
    @chat_name chara="yuki"
    おお……すごい！[sp]
    @chara_hide_all layer="3"
    @hidemess
    @eval exp="f.ev_kittin = 1"
@endif

*kittin_prc
[prc_set]

;探索箇所設定
[locate x="224" y="24"]
[clickable  opacity="0" storage="&f.target_ad" width="149" height="481" target="*ima_0" ]

[locate x="537" y="24"]
[clickable opacity="0"  storage="&f.target_ad" width="212" height="128" target="*ima_1" ]

[locate x="605" y="229"]
[clickable opacity="0"  storage="&f.target_ad" width="71" height="110" target="*ima_2" ]

[s]
