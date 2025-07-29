/// @description Buy choice
// You can write your code in this editor
audio_play_sound(snd_menu_confirm,0,0)
buychoose=true;
event_user(0)
if instance_exists(inst_talk_text){
			instance_destroy(inst_talk_text)
		}
if !instance_exists(inst_buy_text){
		inst_buy_text = instance_create_depth(225,130,-1000,text_typer)
		inst_buy_text.text=sure_buy
		}
Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,210,20);


event_user(3)