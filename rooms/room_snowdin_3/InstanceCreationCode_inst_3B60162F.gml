cutscene_player_move(cutscene, false);

cutscene_dialogue(cutscene, [
"{voice 2}* Hiya,{sleep 5} Human!",
]);

cutscene_char_move(cutscene, char_follower_0, DIR.LEFT, 150);

cutscene_dialogue(cutscene, [
"{face 1}{voice 2}* I'm ur fren now!",
"{face 2}{voice 2}* Let's go!",
]);

cutscene_char_move(cutscene, char_follower_0, DIR.RIGHT, 90);
cutscene_char_move(cutscene, char_follower_0, DIR.DOWN, 80);

cutscene_player_move(cutscene, true);