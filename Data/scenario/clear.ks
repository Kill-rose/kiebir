;初期化処理

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" width="166" size="23" bold="false" x="244" y="527" align="left"]
;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]




;クリックエフェクトの設定変更
[cursor e_width="200" e_color="0xff0000" e_time="600" e_scale="200" e_blend="normal" e_opacity="100"]


[macro name="cursor_default"]
;デフォルトのカーソルに変更
;デフォルトのマウスカーソル画像を変更
[cursor storage="default_pointer.png"]
;ボタンの上にマウスカーソルを乗せたときの画像を変更
[cursor storage="default.png" type="pointer"]
[endmacro]


[cursor_default]

;立ち絵設定



@chara_config talk_focus="brightness" talk_anim="down" talk_anim_value="10" talk_anim_time="250"

@chara_new name="sora" storage="chara/mikan/default.png" jname="そらみ"
@chara_new name="mikan" storage="chara/mikan/default.png" jname="みかん"
@chara_new name="ayashi" storage="chara/mikan/default.png" jname="あやし"
@chara_new name="rokisa" storage="chara/mikan/default.png" jname="ろきさ"
@chara_new name="sabaru" storage="chara/mikan/default.png" jname="さばる"




[eval exp="f.local1 = 0"]



@eval exp="f.chara_mode = 'sora'"
@eval exp="f.mode = 's'"
@eval exp="f.item_mode = 0"
@eval exp="f.select_item = 0"

;以下、変数
;今思うと、わざわざidで管理せずとも数値管理のほうがよかった
;どうせid覚えないし
[iscript]
f.moveList =["ima","kittin"]
f.placeData ={
    ima: {
        jaName: "リビング", //jName   
        move: "all", //どの部屋から移動できるか
        get: 1 //移動可能かどうか
    },
    kittin: {
        jaName: "キッチン",
        move: "all",
        get: 1
    }
    
}
f.nowPlace = "f1_rouka"


//アイテム
f.itemData ={
    tv: {
        jaName: "テレビ",
        image: "card/item/letter.png",
        get: 1
    },
    pring: {
        jaName: "プリン",
        image: "card/item/aru_key.png",
        get: 1
    },
    sa: {
        jaName: "部屋の鍵（ユキ）",
        image: "card/item/yuki_key.png",
        get: 1
    },
    3: {
        jaName: "懐中時計",
        image: "card/item/watch.png",
        get: 0
    }
}
//いいやり方が思いつかないからこうした。アイテムが表示順で並んでるのでこれを参照して並べる
//アイテムNo.
f.itemNum =["letter","aru_key","yuki_key"]

//人物
f.personData ={
    mikan: {
        jaName: "人物情報：みかん",
        image: "card/person/mikan.png",
        get: 1
    },
    rokisa: {
        jaName: "人物情報：ろきさ",
        image: "card/person/rokisa.png",
        get: 1
    },
    sabaru: {
        jaName: "人物情報：さばる",
        image: "card/person/sabaru.png",
        get: 1
    },
    ayashi: {
        jaName: "人物情報：あやし",
        image: "card/person/ayashi.png",
        get: 0
    }
}
//人物No.
f.personNum =["mikan","sabaru","rokisa","ayashi"]

f.select_person = 0

f.storyData =["みかんの家を調査しよう。"]
f.story = f.storyData[0]
f.taskData ={
    0: ["居間を調査する","キッチンを調査する"]
}

[endscript]

@return