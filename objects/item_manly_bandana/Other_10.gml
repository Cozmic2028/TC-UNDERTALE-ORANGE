///@desc Use
Dialog_Add("* Hell yeah!");
Dialog_Start();

Player_SetDef(7);

Item_Remove(_item_slot);

audio_play_sound(snd_item_equip,0,false);

event_inherited();