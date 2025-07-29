cutscene_player_move(cutscene, false);

cutscene_dialogue(cutscene, [
"{face 5}{voice 4}* Hiya,{sleep 5} Odin!",
"{face 3}{voice 2}* How'd we get here?",
"{face 2}{voice 2}* Well,{sleep 10} that doesn't&  matter!{sleep 15}&* Lead the way!"
]);

cutscene_player_move(cutscene, true);