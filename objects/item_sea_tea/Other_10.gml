if (room=room_battle){
///@desc Use
Dialog_Add("* You drink the Sea Tea.");
Dialog_Start();

Player_Heal(10);


Battle_SetPlayerTempSpd(+10);
audio_play_sound(snd_speedup,0,false);


Item_Remove(_item_slot);
}

else {
Dialog_Add("* You drink the Sea Tea.");
Dialog_Start();

Player_Heal(10);
audio_play_sound(snd_item_heal,0,false);

Item_Remove(_item_slot);
}
//Flag_Set(1,15,0) Flag_Save(1);

event_inherited();
