*room1_0
@jump cond="f.mode == 1" storage="use.ks" target="*room1_1"
@if exp="f.ev_room1_0 != 1"
    [winame]
    #シオ
    これは……師匠の日記だ。[p]
    さすがに見るわけにはいかない……[r]
    いや、調査に詰まったら見てみよう……うん。[p]
    あとは……[p]
    #シオ
    潮の……表？[r]
    師匠、どうしてこんなものを。[p]
    [faname]
    #
    [font color="#78f542"]アイテム「潮汐表」を手に入れた。[resetfont][p]
    [winame]
    #シオ
    引き出しは……。[r]
    鍵がかかってるな……[p]
    @eval exp="f.ev_room1_0 = 1"
@elsif exp="f.ev_room1_0 == 1"
    @if exp="f.itemData.room1_key.get == 1"
        [winame]
        #シオ
        引き出しは鍵がかかっている。[p]
    @else
        [winame]
        #シオ
        師匠は、最後まで何かを調べていたはずだ。[r]
        この航路記録に、なにか手がかりが……？[p]
        あと、引き出しも気になるな。[r]
        鍵は、師匠が持ち歩いてたんじゃ……[p]
    @endif
@endif
@jump target="*end" 



*room1_5
@jump cond="f.mode == 1" storage="use.ks" target="*room1_1"
@if exp="f.ev_room1_5 != 1"
[winame]
#シオ
この引き出しは鍵がかかっていないな……[p]
……[l][r]
置き時計だ。[p]
デザインを見るに、この部屋に元からあったものだな。[p]
そういえば、[r]
師匠の持ち歩いていた懐中時計は……[p]
そうだ、昨日借りてから返してないや……[p]
……[p]
@image layer="3" storage="moning.png" page="fore" visible="true" folder="image" time="500" x="0" y="0"
@ptext layer="4" x="18" y="315" text="目的" size="28"
@ptext layer="5" x="18" y="355" text="師匠の死を解明する。" size="20"
@ptext layer="6" x="18" y="470" text="タスク" size="28"
@ptext layer="7" x="18" y="515" text="□ 師匠の部屋を調べる" size="20"
@layopt layer="3" visible="true"
@layopt layer="4" visible="true"
@layopt layer="5" visible="true"
@layopt layer="6" visible="true"
@layopt layer="7" visible="true"

@ptext layer="10" x="1050" y="33" text="師匠の部屋" size="28"
@layopt layer="10" visible="true"

……よし。[p]
絶対に犯人を見つけてみせる……[p]
@eval exp="f.ev_room1_5 = 1"
@else
[winame]
#シオ
元から部屋にあった置き時計だ。[r]
ここには手がかりはなさそうだな……[p]
@jump target="dining" storage="scene1.ks" 

@endif
@jump target="*end" 

*room1_1
@jump cond="f.mode == 1" storage="use.ks" target="*room1_1"
@if exp="f.ev_room1_1 != 1"
[winame]
#シオ
師匠……。[p]
一緒に寝るって言ったのに、[r]
聞いてくれなくて……[p]
どっちが床で寝るかに揉めたんだっけ。[p]
結局、私が先に寝ちゃったみたいだけど。[p]
…………私が、寝ていなければ……[p]
@eval exp="f.ev_room1_1 = 1"
@else
[winame]
#シオ
布団だ。[r]
ここには手がかりはなさそうだな……[p]
@endif
@jump target="*end" 

*room1_2
@jump cond="f.mode == 1" storage="use.ks" target="*room1_2"
@if exp="f.ev_room1_2 != 1"
[winame]
#シオ
鏡だ。[r]
ちゃんと映る。[p]
取り外したりは……できない。[p]
@eval exp="f.ev_room1_2 = 1"
@else
[winame]
#シオ
う～～ん。[p]
どこからどう見てもただの鏡だ。[r]
ここには手がかりはなさそうだな……[p]
@endif
@jump target="*end" 

*room1_3
@jump cond="f.mode == 1" storage="use.ks" target="*room1_3"
@if exp="f.ev_room1_3 != 1"
[winame]
#シオ
ううん……もう日が登っている。[p]
師匠の死体が発見されたのは、およそ１時間前……[p]
……明日の朝になったら、この船は寄港する。[r]
それまでに犯人を自白させなければ。[r]
これは、私が師匠に託されたことだ……[p]
@eval exp="f.ev_room1_3 = 1"
@else
[winame]
#シオ
師匠の死体が発見されたのは、およそ１時間前。[p]
明日の朝になったら、この船は寄港する。[r]
それまでに犯人を自白させなければ。[r]
これは、私が師匠に託されたことだ……[p]
@endif
@jump target="*end" 

*room1_4
@jump cond="f.mode == 1" storage="use.ks" target="*room1_4"
@if exp="f.ev_room1_4 != 1"
[winame]
#シオ
クローゼットで寝ようと思ったが、却下されてしまった。[p]
数点ハンガーが並んでいるだけだ。[r]
特に手がかりはなさそうだな……[p]
@eval exp="f.ev_room1_4 = 1"
@else
[winame]
#シオ
数点ハンガーが並んでいるだけだ。[r]
特に手がかりはなさそうだな……[p]
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