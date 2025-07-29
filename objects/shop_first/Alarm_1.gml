/// @description Buy
// You can write your code in this editor
Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,210,-190,20)
if(Item_GetNumber()!=8){
	if buysel=0{
	if(Player_GetGold()>=25){
		
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.PIE_SALE,1)// --- SOLD OUT ---
		event_user(0)
		audio_play_sound(snd_buyitem,1,0)
		if !instance_exists(inst_buy_item){
		inst_buy_item = instance_create_depth(225,130,-1000,text_typer)
			inst_buy_item.text=buy_item_text	
		}
		Player_SetGold(Player_GetGold()-25)
		Item_Add(item_tml)
	}else{
		event_user(0)
		if !instance_exists(inst_no_money){
		inst_no_money = instance_create_depth(225,130,-1000,text_typer)
			inst_no_money.text=nomoney_text
		}
	}
	}
	if buysel=1{
	if(Player_GetGold()>=70){	
		
		event_user(0)
		audio_play_sound(snd_buyitem,1,0)
		if !instance_exists(inst_buy_item){
		inst_buy_item = instance_create_depth(225,130,-1000,text_typer)
			inst_buy_item.text=buy_item_text
		}
		Player_SetGold(Player_GetGold()-70)
		Item_Add(item_tml)
	}else{
		event_user(0)
		if !instance_exists(inst_no_money){
		inst_no_money = instance_create_depth(225,130,-1000,text_typer)
			inst_no_money.text=nomoney_text
		}
	}
	}
		if buysel=2{
	if(Player_GetGold()>=10){	
		
		event_user(0)
		audio_play_sound(snd_buyitem,1,0)
		if !instance_exists(inst_buy_item){
		inst_buy_item = instance_create_depth(225,130,-1000,text_typer)
			inst_buy_item.text=buy_item_text
		}
		Player_SetGold(Player_GetGold()-10)
		Item_Add(item_tml)
	}else{
		event_user(0)
		if !instance_exists(inst_no_money){
		inst_no_money = instance_create_depth(225,130,-1000,text_typer)
			inst_no_money.text=nomoney_text
		}
	}
		}
	if buysel=3{
	if(Player_GetGold()>=90){		
		event_user(0)
		audio_play_sound(snd_buyitem,1,0)
		if !instance_exists(inst_buy_item){
		inst_buy_item = instance_create_depth(225,130,-1000,text_typer)
			inst_buy_item.text=buy_item_text
		}
		Player_SetGold(Player_GetGold()-90)
		Item_Add(item_tml)
	}else{
		event_user(0)
		if instance_exists(inst_buy_item)
		instance_destroy(inst_buy_item)
		if !instance_exists(inst_no_money){
		inst_no_money = instance_create_depth(225,130,-1000,text_typer)
			inst_no_money.text=nomoney_text
		}
	}
	}
	
	}else{
	audio_play_sound(snd_item_swallow,1,0)
	event_user(0)
	if instance_exists(inst_no_money){
		instance_destroy(inst_no_money)	
		}
		if instance_exists(inst_buy_item){
		instance_destroy(inst_buy_item)	
		}
	if !instance_exists(inst_full){
		inst_full = instance_create_depth(225,130,-1000,text_typer)
			inst_full.text=fulltext
		}
	}
		if instance_exists(inst_buy_text){
		instance_destroy(inst_buy_text)	
		}
