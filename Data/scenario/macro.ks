



;=================
;　カーソルマクロ
;=================

[macro name="cursor_search"]
;デフォルトのマウスカーソル画像を変更
[cursor storage="search.png" x="9" y="9"]
;ボタンの上にマウスカーソルを乗せたときの画像を変更
[cursor storage="search_pointer.png" type="pointer" x="9" y="9"]
[endmacro]



;デフォルトカーソル変更マクロはclearに記述


;===============
;　効果音マクロ
;===============

;ページめくり効果音
[macro name="sp"]
[p][playse storage="決定ボタンを押す7.mp3"]
[endmacro]


[macro name=getinfo]
@iscript
f.infoData[mp.id].get = 1
@endscript
[endmacro]

[macro name=iget]
@playse storage="itemgetsea.ogg"
@iscript
f.itemData[mp.id].get = 1
@endscript
[endmacro]


;===========
;　画像関連
;===========

;背景変更のみ。本来はmove
[macro name="bgadv"]
[image layer="0" storage="frame2.png" page="fore" visible="true" folder="bgimage" time="500" wait="false" x="0"y="0"]
[image layer="1" storage="%st" page="fore" visible="true" folder="bgimage" time="1000" x="205"y="23"]
[endmacro]

;キャラ表示マクロ
[macro name="chara"]
[image layer="2" storage="%st" page="fore" visible="true" folder="fgimage" time="%time|1000" x="263" y="33" ]
[endmacro]
;キャラ削除マクロ
[macro name="charafree"]
[freeimage layer="2" ]
[endmacro]

;画像移動表示マクロ
[macro name="move"]

;全員退場させるタグあったような
;[chara_hide name="kanda" time="500"]

@position layer="message0" visible="false"
[image layer="0" storage="frame2.png" page="fore" visible="true" folder="bgimage" time="300" wait="false"]
;上（レイヤ1）にフェードで新しい画像を表示して上書き（新規表示みたいな）
[image name="image0" layer="2" storage="%st" page="fore" visible="true" folder="bgimage" time="1000" wait="true" x="205"y="23"]
;→したに新しいやつで上書き
[image name="image" layer="1" storage="%st" page="fore" visible="true" folder="bgimage" time="0" wait="false" x="205"y="23"]
;→上の消す（非表示）
[freeimage layer="2" ]
[cm]
;@position visible="true" layer="message0"
[wait time="200"]
[endmacro]






[macro name="hidemess"]
@layopt layer="message0" visible=false
[endmacro]

[macro name="setmessage"]
@cursor_default
@layopt layer="message0" visible=true
[endmacro]

[macro name="setfix"]
;アイテムボタン
[button name="role_button" role="sleepgame" graphic="menu/item.png" enterimg="menu/item2.png" storage="item.ks" x="1121" y="529" clickse="カーソル移動2.mp3"]
;バックログボタン
[button name="role_button" role="backlog" graphic="menu/log.png" enterimg="menu/log2.png" x="1189" y="529" clickse="カーソル移動2.mp3"]
;セーブボタン
[button name="role_button" role="save" graphic="menu/save.png" enterimg="menu/save2.png" x="1119" y="568" clickse="カーソル移動2.mp3"]
;ロードボタン
[button name="role_button" role="load" graphic="menu/load.png" enterimg="menu/load2.png" x="1189" y="568" clickse="カーソル移動2.mp3"]
;オートボタン
[button name="role_button" role="auto" graphic="menu/auto.png" enterimg="menu/auto2.png" x="1119" y="608" autoimg="menu/auto3.png" clickse="カーソル移動2.mp3"]
;スキップボタン
[button name="role_button" role="skip" graphic="menu/skip.png" enterimg="menu/skip2.png" x="1189" y="608" skipimg="menu/skip3.png" clickse="カーソル移動2.mp3" ]
;コンフィグボタン（※sleepgame を使用して config.ks を呼び出しています）
[button name="role_button" role="sleepgame" graphic="menu/setup.png" enterimg="menu/setup2.png" storage="config.ks" x="1105" y="647" clickse="カーソル移動2.mp3"]
;メニュー呼び出しボタン（※ロールボタンを使うなら不要）
[button name="role_button" role="title" graphic="menu/title.png" enterimg="menu/title2.png" x="1187" y="647" clickse="カーソル移動2.mp3"]
[endmacro]

[macro name=quakese][quake time="250" wait="false" count="2" vmax="20"]
[endmacro]

[macro name="clearcards"]
@freeimage layer="5"
@freeimage layer="6"
@freeimage layer="10"
[endmacro]

[macro name="winame"]
[clearcards]
;メッセージウィンドウの設定
[position layer="message0" left="204" top="518" width="872" height="180" page="fore" visible="true" frame="messframe0.png"]
;文字が表示される領域を調整
[position layer="message0" page="fore" margint="38" marginl="23" marginr="23" marginb="34"]
@setmessage
[endmacro]

[macro name="faname"]
[clearcards]
#
;メッセージウィンドウの設定
[position layer="message0" left="204" top="518" width="874" height="180" page="fore" visible="true" frame="messframe.png"]
;文字が表示される領域を調整
[position layer="message0" page="fore" margint="38" marginl="23" marginr="23" marginb="34"]
@setmessage

@anim name="nameback" time="0"  opacity="0"
[endmacro]

[macro name="chat_name"]
[winame]
@if exp="mp.chara == 'rokisa'"
@anim name="nameback" time="0"  opacity="0"
@image layer="message0" storage="name/red.png" folder="image" top="518" left="204" page="fore" visible="true" zindex="100" name="nameback"
#rokisa
@elsif exp="mp.chara == 'sora'"
@anim name="nameback" time="0"  opacity="0"
@image layer="message0" storage="name/shio.png" folder="image" top="518" left="204" page="fore" visible="true" zindex="100" name="nameback"
#sora
@elsif exp="mp.chara == 'mikan'"
@anim name="nameback" time="0"  opacity="0"
@image layer="message0" storage="name/shio.png" folder="image" top="518" left="204" page="fore" visible="true" zindex="100" name="nameback"
#mikan
@elsif exp="mp.chara == 'sabaru'"
@anim name="nameback" time="0"  opacity="0"
@image layer="message0" storage="name/shio.png" folder="image" top="518" left="204" page="fore" visible="true" zindex="100" name="nameback"
#sabaru
@elsif exp="mp.chara == 'ayashi'"
@anim name="nameback" time="0"  opacity="0"
@image layer="message0" storage="name/shio.png" folder="image" top="518" left="204" page="fore" visible="true" zindex="100" name="nameback"
#ayashi
@endif
[endmacro]



[macro name="prc_set"]
;画面作り処理まとめ
[clearcards]
@cards
@if exp="f.mode == 's'"
        @eval exp="f.target_ad = 'search.ks'"
@elsif exp="f.mode == 'u'"
        @eval exp="f.target_ad = 'use.ks'"
@endif
[endmacro]

@layopt layer="message0" visible="false"
[bg storage="back.png"  cross="false" time="0"]
[setfix]

[macro name="moveList"]
;移動場所一覧を出す
;使用ﾚｲﾔ：８
;xは変わらないが、簡単に変えられるように変数
;pyが進む数
@freeimage layer="8"
@iscript
tf.x = 1133
tf.y = -10
tf.py = 52
tf.i = -1
@endscript
*moveList_loop
;次の場所を探す　なければ終了
;movelistの中身を順番で見て、getが1なら表示する
;1こもなかったら終わる
;tf.i == f.moveList.lengthは、==じゃなくて以上のほうがいいかも
@eval exp="tf.i += 1"
;[faname][emb exp="tf.i"][emb exp="f.moveList[tf.i]"][sp][hidemess]
@jump cond="tf.i >= f.moveList.length" target="*moveList_end"
@jump cond="f.placeData[f.moveList[tf.i]].get != 1" target="*moveList_loop"
@eval exp="tf.place = f.moveList[tf.i]"
@eval exp="tf.place_j = f.placeData[tf.place].jaName"
@eval exp="tf.y += tf.py"
[ptext layer="8" text="&tf.place_j" x="&tf.x" y="&tf.y" size="29" color="white" align="left" overwrite="true" width="130" name="&tf.place" ]
@layopt layer="8" visible=true
[if exp="f.nowPlace == tf.place"]
    ;現在地のアイコン
    @eval exp="tf.x2 = tf.x - 35"
    @eval exp="tf.y2 = tf.y - 5"
    @image layer="8" storage="place.png" folder="image" left="&tf.x2" top="&tf.y2" page="fore" visible="true" name="nowplace"
[else]
    ;現在地以外はクリックして移動できる
    [locate x="&tf.x" y="&tf.y"]
    [clickable opacity="255"  storage="scene1.ks" width="130" height="50" target="&tf.place" ]
[endif]
@jump target="*moveList_loop"
*moveList_end

[endmacro]








;カードを並べる
[macro name="cards"]
[moveList]
;ユキ特殊の暗幕を削除
@freeimage layer="7"

[eval exp="tf.file = 'card/base/normal.png'"]
[eval exp="tf.file2 = 'card/base/normal_none.png'"]
[eval exp="tf.file3 = 'card/base/normal_up_down.png'"]
[eval exp="tf.file5 = 'card/normal.png'"]
[eval exp="f.local = 'card/normal_s.png'"]
@eval exp="f.chara_mode_j = 'そらみ'"

@if exp="f.mode == 's'"
    @eval exp="f.mode_j = '調査'"
    @cursor_search
    [eval exp="tf.file6 = 'card/search.png'"]
@elsif exp="f.mode == 'u'"
    @eval exp="f.mode_j = '使用'"
    [eval exp="tf.file6 = 'card/use.png'"]
@elsif exp="f.mode == 't'"
    @eval exp="f.mode_j = '特殊'"
    @eval exp="tf.file6 = f.local"
@endif

@if exp="f.item_mode == 0"
    @eval exp="f.item_mode_j = '手がかり'"
    [eval exp="tf.file7 = 'card/item.png'"]
    ;select_item_jを取得
    @eval exp="f.select_item_j = f.itemData[f.itemNum[f.select_item]].jaName"
    ;select_item imageを取得
    [eval exp="tf.file4 = f.itemData[f.itemNum[f.select_item]].image"]
@else
    @eval exp="f.item_mode_j = '人物'"
    [eval exp="tf.file7 = 'card/person.png'"]
    ;select_item_jを取得
    @eval exp="f.select_item_j = f.personData[f.personNum[f.select_person]].jaName"
    ;select_item imageを取得
    [eval exp="tf.file4 = f.personData[f.personNum[f.select_person]].image"]
@endif

;左上の文字のフォント
@font face="min"
;位置変数
@eval exp="tf.x = 204"
@eval exp="tf.y = 517"
@eval exp="tf.x += 15"

;キャラ変更
@image storage="&tf.file2" x="&tf.x" y="&tf.y" name="chara_mode_button"  folder="image" time="0" wait="false" visible="true" layer="5"
@image storage="&tf.file5" x="&tf.x" y="&tf.y" name="chara_mode_button"  folder="image" time="0" wait="false" visible="true" layer="6"
@eval exp="tf.x_text = tf.x + 10"
@eval exp="tf.y_text = tf.y + 6"
@ptext layer="10" text="&f.chara_mode_j" x="&tf.x_text" y="&tf.y_text" size="16" color="white" overwrite="true" 

;モード変更
@eval exp="tf.x += 174"
@image storage="&tf.file" x="&tf.x" y="&tf.y"  name="mode_button" folder="image" time="0" wait="false" visible="true" layer="5"
@image storage="&tf.file6" x="&tf.x" y="&tf.y" name="chara_mode_button"  folder="image" time="0" wait="false" visible="true" layer="6"
@eval exp="tf.x_text += 174"
@ptext layer="10" text="&f.mode_j" x="&tf.x_text" y="&tf.y_text" size="16" color="white" overwrite="true" 

@eval exp="tf.x += 174"
@image storage="&tf.file" x="&tf.x" y="&tf.y"  name="item_mode_button" folder="image" time="0" wait="false" visible="true" layer="5"
@image storage="&tf.file7" x="&tf.x" y="&tf.y" name="chara_mode_button"  folder="image" time="0" wait="false" visible="true" layer="6"
@eval exp="tf.x_text += 174"
@ptext layer="10" text="&f.item_mode_j" x="&tf.x_text" y="&tf.y_text" size="16" color="white" overwrite="true"

@eval exp="tf.x += 174"
@image storage="&tf.file2" x="&tf.x" y="&tf.y"  name="item_button" folder="image" time="0" wait="false" visible="true" layer="5"
@image storage="&tf.file4" x="&tf.x" y="&tf.y" name="chara_mode_button"  folder="image" time="0" wait="false" visible="true" layer="6"
@eval exp="tf.x_text += 174"
@ptext layer="10" text="&f.select_item_j" x="&tf.x_text" y="&tf.y_text" size="16" color="white" overwrite="true"

@eval exp="tf.x += 174"
@image storage="&tf.file3" x="&tf.x" y="&tf.y"  name="test" folder="image" time="0" wait="false" visible="true" layer="5"
@eval exp="tf.x_text += 174"

@layopt layer="10" visible="true"

@if exp="f.mode == 't'"
    ;モード　特殊（もっかい分岐）
    @if exp="f.chara_mode == 'sora'"
        @image storage="black.png" folder="fgimage" x="205" y="23" layer="7" time="100" wait="false" visible="true"
    @endif
@endif

@font face="main"



;ボタン用
;キャラ変更
;[locate x="219" y="517"]
;[clickable  opacity="0" storage="card.ks" width="145" height="190" target="*chara_mode" ]
;モード変更
[locate x="393" y="517"]
[clickable opacity="0"  storage="card.ks" width="145" height="190" target="*mode" ]
;アイテムモード変更
[locate x="567" y="517"]
[clickable opacity="0"  storage="card.ks" width="145" height="190" target="*item_mode" ]
;手がかり（詳細）
[locate x="741" y="517"]
[clickable opacity="0"  storage="card.ks" width="145" height="190" target="*item" ]
;手がかり↑
[locate x="915" y="517"]
[clickable opacity="0"  storage="card.ks" width="145" height="89" target="*item_up" ]
;手がかり↓
[locate x="915" y="618"]
[clickable opacity="0"  storage="card.ks" width="145" height="89" target="*item_down" ]

[endmacro]


[macro name="w"]
[if exp="TYRANO.kag.stat.is_skip == false"][wait time="500"][endif]
[endmacro]
[macro name="sw"]
[if exp="TYRANO.kag.stat.is_skip == false"][wait time="300"][endif]
[endmacro]
[macro name="wai"][if exp="TYRANO.kag.stat.is_skip == false"][wait time="%time|1000"][else][eval exp="tf.wa = mp.time / 5"][wait time="&tf.wa"][endif][endmacro]