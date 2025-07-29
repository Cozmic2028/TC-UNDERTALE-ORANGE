/// @description Init
// init 
switch sel{
case 0 :
shopping = "buy"
Anim_Create(self,"itemcom_y",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,127,-100,20)
inst_buy_text = instance_create_depth(225,130,-1000,text_typer)
			inst_buy_text.text=buy_text
break;

case 1 :
shopping = "sell"
	talking=true
	event_user(3)
if !instance_exists(inst_sell_text){
		inst_sell_text = instance_create_depth(20,130,-1000,text_typer)
		inst_sell_text.text=sell_text
		}
		
break;

case 2 :
event_user(0)
	if !instance_exists(inst_talk_text){
		inst_talk_text = instance_create_depth(225,130,-1000,text_typer)
			inst_talk_text.text=talk_text
		}
shopping = "talk"
event_user(3)
Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,210,-190,20);
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,178,-40,20);
break;

case 3 :
event_user(0)
shopping = "exit"
	talking=true
	if !instance_exists(inst_talk_text){
		inst_talk_text = instance_create_depth(30,130,-1000,text_typer)
			inst_talk_text.text=byetext
		}
		event_user(3)
		alarm[5]=1
break;

}
