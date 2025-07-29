var vert = (Input_IsPressed(INPUT.DOWN)) - (Input_IsPressed(INPUT.UP))
if shopping = "noone"{

sel += vert
if sel > array_length(settings_options)-1 {
	sel = 0
	};
else if sel < 0 {
	sel = array_length(settings_options)-1
	};
}
if shopping = "talk"{

talksel += vert
if talksel > array_length(talk_options)-1 {
	talksel = 0
	};
else if talksel < 0 {
	talksel = array_length(talk_options)-1
	};
}
if shopping = "buy" && buychoose=false{
	
buysel+=vert

if buysel > array_length(buy_options)-1 {
	buysel = 0
	};
else if buysel < 0 {
	buysel = array_length(buy_options)-1
	};
}
	if buychoose=true{
	
choicesel+=vert

if choicesel > array_length(buy_choose)-1 {
	choicesel = 0
	};
else if choicesel < 0 {
	choicesel = array_length(buy_choose)-1
	};
}

if shopping = "noone"{
	event_user(0)
	if !instance_exists(inst_welcome){
	inst_welcome=instance_create_depth(20,130,-1000,text_typer)
	inst_welcome.text=welcome_text
	}
	switch sel{
		case 0:
		if Input_IsPressed(INPUT.CONFIRM){
	alarm[0]=2
	event_user(0)
	buysel=0
	inst_buy_text = instance_create_depth(225,130,-1000,text_typer)
			inst_buy_text.text=buy_text
	Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,210,-190,soul_anim);
	audio_play_sound(snd_menu_confirm,0,0)
	event_user(3)
}
		if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,158,-20,soul_anim);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-60,soul_anim);
}
		break;
		
		case 1:
		if Input_IsPressed(INPUT.CONFIRM){
		audio_play_sound(snd_menu_confirm,0,0)
	alarm[0]=2
	
	}
			if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,178,-20,soul_anim);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,138,20,soul_anim);
}	
		break;
		
		case 2:
		if Input_IsPressed(INPUT.CONFIRM){
		audio_play_sound(snd_menu_confirm,0,0)
	alarm[0]=2
	
	}
		if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-20,soul_anim);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,158,20,soul_anim);
}	
		break;
		
		case 3:
		if Input_IsPressed(INPUT.CONFIRM){
		audio_play_sound(snd_menu_confirm,0,0)
	alarm[0]=2
	
	}
		if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,138,60,soul_anim);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,178,20,soul_anim);
}	
		break;
	}
}
if shopping = "buy"{
	if instance_exists(inst_welcome){
		instance_destroy(inst_welcome)	
		}
		if buychoose = false{
			choicesel=0
			if Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.PIE_SALE)=1 {// --- SOLD OUT ---
	buy_options[0] = "--- Sold out ---";
	gold_options[0] = "";
	
}
switch(buysel){
	
case 0:{
	if !instance_exists(inst_item_info){
	inst_item_info = instance_create_depth(225,35,-1000,text_typer)
			inst_item_info.text=item_info_text_0
	}
	if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,158,-20,soul_anim);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-60,soul_anim);
}

	if Input_IsPressed(INPUT.UP){if instance_exists(inst_item_info)instance_destroy(inst_item_info)}
	if Input_IsPressed(INPUT.DOWN){if instance_exists(inst_item_info)instance_destroy(inst_item_info)}
	if Input_IsPressed(INPUT.CONFIRM){
		
	
		if instance_exists(inst_buy_text){
		instance_destroy(inst_buy_text)	
		}
		if Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.PIE_SALE)=0{// --- SOLD OUT ---
		
		alarm[2]=2	
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,138,45,soul_anim);
		}
	}
	

}
	break;
	case 1:{
		if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,178,-20,soul_anim);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,138,20,soul_anim);
}	

		if !instance_exists(inst_item_info){
	inst_item_info = instance_create_depth(225,35,-1000,text_typer)
			inst_item_info.text=item_info_text_1
	}
	if Input_IsPressed(INPUT.UP){if instance_exists(inst_item_info)instance_destroy(inst_item_info)}
	if Input_IsPressed(INPUT.DOWN){if instance_exists(inst_item_info)instance_destroy(inst_item_info)}
		if Input_IsPressed(INPUT.CONFIRM){
		if instance_exists(inst_buy_text){
		instance_destroy(inst_buy_text)	
		}
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,158,25,soul_anim);
		alarm[2]=2
	}
		
	}
		break;
		case 2:{
			if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-20,soul_anim);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,158,20,soul_anim);
}	
			if !instance_exists(inst_item_info){
	inst_item_info = instance_create_depth(225,35,-1000,text_typer)
			inst_item_info.text=item_info_text_2
	}
	if Input_IsPressed(INPUT.UP){if instance_exists(inst_item_info)instance_destroy(inst_item_info)}
	if Input_IsPressed(INPUT.DOWN){if instance_exists(inst_item_info)instance_destroy(inst_item_info)}
		if Input_IsPressed(INPUT.CONFIRM){
		if instance_exists(inst_buy_text){
		instance_destroy(inst_buy_text)	
		}
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,178,5,soul_anim);
		alarm[2]=2
	}
		
	}
	break;
case 3:{
	if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,218,-20,soul_anim);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,178,20,soul_anim);
}	
	if !instance_exists(inst_item_info){
	inst_item_info = instance_create_depth(225,35,-1000,text_typer)
			inst_item_info.text=item_info_text_3
	}
	if Input_IsPressed(INPUT.UP) {if instance_exists(inst_item_info)instance_destroy(inst_item_info)}
	if Input_IsPressed(INPUT.DOWN){if instance_exists(inst_item_info)instance_destroy(inst_item_info)}
		if Input_IsPressed(INPUT.CONFIRM){
		if instance_exists(inst_buy_text){
		instance_destroy(inst_buy_text)	
		}
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-15,soul_anim);
		alarm[2]=2
	}
		
	}
	break;
	case 4:{
		if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,138,80,soul_anim);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,20,soul_anim);
}	
		if Input_IsPressed(INPUT.CONFIRM){	
			
		Anim_Create(self,"itemcom_y",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,27,100,soul_anim)
	audio_play_sound(snd_menu_cancel,0,0)
	sel=0
shopping = "noone"
event_user(3)
Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,210,soul_anim);
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,218,-80,soul_anim);
		}
	}
}
if Input_IsPressed(INPUT.CANCEL){	
		Anim_Create(self,"itemcom_y",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,27,100,20)
		
	audio_play_sound(snd_menu_cancel,0,0)
	event_user(2)
	sel=0
shopping = "noone"
event_user(3)
		}
		} 
		if buychoose = true{
			event_user(1)
			
			if Input_IsPressed(INPUT.CANCEL){
				
				
				event_user(2)
				buychoose=false
				if instance_exists(inst_buy_text){
			instance_destroy(inst_buy_text)
		}
		inst_buy_text = instance_create_depth(225,130,-1000,text_typer)
			inst_buy_text.text=buy_text
			audio_play_sound(snd_menu_cancel,1,0)
			
			}
			switch choicesel{
				case 0:
				{
				if Input_IsPressed(INPUT.CONFIRM){
		alarm[1]=1
		event_user(2)
		buychoose=false
		
	}
				if Input_IsPressed(INPUT.UP){
					
					
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-15,soul_anim);
}	
if Input_IsPressed(INPUT.DOWN){
	
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-15,soul_anim);
}	
			}
				break;
				
				case 1:{
				if Input_IsPressed(INPUT.CONFIRM) {
		
		if instance_exists(inst_buy_text){
			instance_destroy(inst_buy_text)
		}
		inst_buy_text = instance_create_depth(225,130,-1000,text_typer)
			inst_buy_text.text=buy_text
		audio_play_sound(snd_menu_confirm,0,0)
		event_user(2)
		buychoose=false
		
}	
				if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,183,15,soul_anim);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,183,15,soul_anim);
}	
				}
				break;
				
			}
			
		}
	
}
if shopping = "sell"{
if !instance_exists(inst_sell_text){
	talking=false
	shopping = "noone"
}		
}
if shopping = "talk"{
	event_user(3)
	switch(talksel){
	case 0:{
if Input_IsPressed(INPUT.CONFIRM){
alarm[3]=2	
alarm[4]=10
}
if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,158,-20,10);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-60,10);
}
	}
break;
case 1:{
if Input_IsPressed(INPUT.CONFIRM){
	alarm[3]=2	
	alarm[4]=10
}
if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,178,-20,10);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,138,20,10);
}
	}
break;
case 2:{
if Input_IsPressed(INPUT.CONFIRM){
	alarm[3]=2
	alarm[4]=10
}
if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-20,10);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,158,20,10);
}	
	}
break;
case 3:{
if Input_IsPressed(INPUT.CONFIRM){
	alarm[3]=2	
	alarm[4]=10
}
if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,218,-20,15);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,178,20,15);
}
	}
break;
case 4:{
	
if Input_IsPressed(INPUT.CONFIRM){
	audio_play_sound(snd_menu_confirm,0,0)
	talksel=0
	shopping = "noone";	
	
		if instance_exists(inst_talk_text){
			instance_destroy(inst_talk_text)
		}
	Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,210,20);
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,218,-40,20);
}
if Input_IsPressed(INPUT.UP){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,138,80,15);
}	
if Input_IsPressed(INPUT.DOWN){
audio_play_sound(snd_menu_switch,0,0)
Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,20,15);
}
	}
	
break;

}
if Input_IsPressed(INPUT.CANCEL){
	event_user(2)
	audio_play_sound(snd_menu_cancel,0,0)
	talksel = 0
	shopping = "noone";	
	if instance_exists(inst_talk_text){
			instance_destroy(inst_talk_text)
		}
}
}