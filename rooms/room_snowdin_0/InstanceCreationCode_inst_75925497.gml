cutscene_player_move(cutscene, false);

cutscene_dialogue(cutscene, [
"* No need to go back that way."
]);

cutscene_char_move(cutscene, char_player, DIR.RIGHT, 5);

cutscene_player_move(cutscene, true);