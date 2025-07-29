draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));
draw_sprite_ext(shopBG,BGnum,0,0,1,1,0,c_white,1);
draw_sprite_ext(shopkeeper,SKnum,SK_x,SK_y,1,1,0,c_white,1);

draw_sprite_ext(spr_pixel,0,0,124,320,116,0,c_white,1);
draw_sprite_ext(spr_pixel,0,3,127,314,110,0,c_black,1);
if talking=false{//if true, then the red soul sprite and 
				//stripes along with the texts are removed.
	draw_sprite_ext(spr_pixel,0,210,itemcom_y,110,116,0,c_white,1);
draw_sprite_ext(spr_pixel,0,213,itemcom_y+3,104,110,0,c_black,1);
draw_sprite_ext(spr_pixel,0,210,124,110,116,0,c_white,1);
draw_sprite_ext(spr_pixel,0,213,124+3,104,110,0,c_black,1);
}
if shopping = "noone"{
for (var i = 0; i < array_length(settings_options); ++i){
		
	if sel = i sel_col = noone;
    else sel_col = c_white;
	draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));
    draw_text_transformed_color(240,130+(i*20), settings_options[i], 1, 1, 0,sel_col,sel_col,sel_col,sel_col,1);	
}
}
if talking = false{
draw_sprite_ext(spr_battle_soul_red,0,_soul_x,_soul_y,0.5,0.5,0,c_white,_soul_alpha);

	draw_set_color(c_white);
	if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.LANGUAGE)==0{//english
	draw_text(230,215,string(Player_GetGold())+"G");
	}
	else if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.LANGUAGE)==1{//russian
		draw_text(230,215,string(Player_GetGold())+"М");
	}

draw_set_color(c_white);
draw_text(275,215,string(Item_GetNumber())+"/8");
}
if shopping = "buy"{
	for (var i = 0; i < array_length(buy_options); ++i){
		
	if buysel = i sel_col = noone;
    else sel_col = c_white;
	draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));
    draw_text_transformed_color(50,130+(i*20), buy_options[i], 1, 1, 0,sel_col,sel_col,sel_col,sel_col,1);	
	draw_text_transformed_color(30,130+(i*20), gold_options[i], 1, 1, 0,sel_col,sel_col,sel_col,sel_col,1);	
if Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.PIE_SALE)=1{// --- SOLD OUT ---
draw_text_transformed_color(50,130, buy_options[0], 1, 1, 0,c_gray,c_gray,c_gray,c_gray,1);	

}
	}
}
if buychoose=true{//this is responsible for yes and no when purchasing an item
	for (var i = 0; i < array_length(buy_choose); ++i){
		
	if choicesel = i sel_col = noone;
    else sel_col = c_white;
	    draw_text_transformed_color(240,175 +(i*15), buy_choose[i], 1, 1, 0,sel_col,sel_col,sel_col,sel_col,1);	

}
}
	if shopping = "talk"{
	for (var i = 0; i < array_length(talk_options); ++i){
		
	if talksel = i sel_col = noone;
    else sel_col = c_white;
	draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));
    draw_text_transformed_color(30,130+(i*20), talk_options[i], 1, 1, 0,sel_col,sel_col,sel_col,sel_col,1);	
	
}

}
	
	