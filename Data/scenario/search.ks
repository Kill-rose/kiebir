
*ima_2
@if exp="f.f1rouka_2_ed != 1"
[winame]
@chat_name chara="sora"
ここから庭に行けるみたいだ。[sp]
@eval exp="f.f1rouka_2_ed = 1"
@eval exp="f.placeData.niwa.get = 1"
[faname]
「庭」に移動できるようになった。[sp]
@else
@chat_name chara="sora"
ここから庭に行けるみたいだ。[sp]

@endif
@jump target="*end" 



*end
@hidemess
@chara_hide_all layer="3"
@iscript
f.local = f.nowPlace + "_prc"
@endscript
@jump target="&f.local" storage="scene1.ks" 
