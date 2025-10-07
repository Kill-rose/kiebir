;一番最初に呼び出されるファイル

[title name="こぶえもん誕生日スペシャル2025　消えたバースデーケーキ"]
[loadjs storage="my.js" ]

[stop_keyconfig]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"
@call storage="clear.ks"
@call storage="macro.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="scene1.ks"

[s]


