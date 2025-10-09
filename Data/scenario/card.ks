

*mode
@playse storage="カーソル移動2.mp3"
[clearcards]

@if exp="f.mode == 's'"
    @eval exp="f.mode = 'u'"
@elsif exp="f.mode == 'u'"
    @eval exp="f.mode = 't'"
@elsif exp="f.mode == 't'"
    @eval exp="f.mode = 's'"
@endif

@jump target="*end" 

*item_mode
@playse storage="カーソル移動2.mp3"
[clearcards]
@if exp="f.item_mode == 0"
    @eval exp="f.item_mode = 1"
@else
    @eval exp="f.item_mode = 0"
@endif

@jump target="*end" 

*item
@playse storage="カーソル移動2.mp3"
[clearcards]
[jump cond="f.item_mode == 0" target="&f.itemNum[f.select_item]" storage="info.ks" ]
[jump cond="f.item_mode != 0" target="&f.personNum[f.select_person]" storage="info.ks" ]
;callじゃないので飛び先のendになる　注意
@jump target="*end" 

*item_up
@playse storage="カーソル移動2.mp3"
[clearcards]
[if exp="f.item_mode == 0"]
    @eval exp="f.select_item -= 1"
@elsif exp="f.select_item < 0"
    @eval exp="f.select_item = f.itemNum.length - 1"
@endif

*item_up_loop
@if exp="f.itemData[f.itemNum[f.select_item]].get == 0"
    @eval exp="f.select_item -= 1"
    ;[winame]手に入れてないので[emb exp="selectitem"]にします[sp][hidemess]
    @jump target="*item_up_loop"
[else]
    @eval exp="f.select_person -= 1"
    @if exp="f.select_person < 0"
        @eval exp="f.select_person = f.personNum.length - 1"
    @endif
    *person_up_loop
    @if exp="f.personData[f.personNum[f.select_person]].get == 0"
        @eval exp="f.select_person -= 1"
        @jump target="*person_up_loop"
    @endif
[endif]
@jump target="*end" 



*item_down
@playse storage="カーソル移動2.mp3"
[clearcards]
[if exp="f.item_mode == 0"]
    @eval exp="f.select_item += 1"

    *item_down_loop
    @if exp="f.itemData[f.itemNum[f.select_item]].get == 0"
        @eval exp="f.select_item += 1"
        @jump target="*item_down_loop"
    @endif

    @if exp="f.select_item >= f.itemNum.length"
        @eval exp="f.select_item = 0"
    @endif
[else]
    @eval exp="f.select_person += 1"

    *person_down_loop
    @if exp="f.personData[f.personNum[f.select_person]].get == 0"
        @eval exp="f.select_person += 1"
        @jump target="*person_down_loop"
    @endif

    @if exp="f.select_person >= f.personNum.length"
        @eval exp="f.select_person = 0"
    @endif
[endif]

@jump target="*end" 


*end
@iscript
f.local = f.nowPlace + "_prc"
@endscript
@jump target="&f.local" storage="scene1.ks" 
