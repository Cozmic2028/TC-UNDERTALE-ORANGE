cutscene_player_move(cutscene, false);

cutscene_dialogue(cutscene, [
"{face 3}{voice 2}* Hiya,{sleep 5} Human!",
]);

cutscene_wait(cutscene, 30);
cutscene_char_move(cutscene, char_slithers_follower, DIR.LEFT, 150);

cutscene_dialogue(cutscene, [
"{face 3}{voice 2}* I'm ur fren now!"
]);

cutscene_player_move(cutscene, true);