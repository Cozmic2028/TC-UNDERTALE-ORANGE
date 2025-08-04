cutscene_player_move(cutscene, false);

cutscene_dialogue(cutscene, [
"{voice 2}* Hiya!",
]);

cutscene_char_move(cutscene, char_follower_0, DIR.LEFT, 150);

cutscene_dialogue(cutscene, [
"{face 1}{voice 2}* Welcome to snowdin!",
"{face 3}{voice 2}* ...",
"{face 3}{voice 2}* Heeeyy...",
"{face 3}{voice 2}* Sorry for assuming{sleep 5},&  but...",
"{face 3}{voice 2}* Are you a human by any&  chance...?",
"{face 3}{voice 2}* Yeah, I thought so.",
"{face 2}{voice 2}* Well,{sleep 10} don't worry!{sleep 15}&* I'm not after you!",
"{face 1}{voice 2}* Most monsters here&  aren't!",
"{face 3}{voice 2}* But...{sleep 20} There ARE a&  few royal guards here...",
"{face 3}{voice 2}* And one that's...",
"{face 3}{voice 2}* ESPECIALLY passionate,&  to say the least...",
"{face 1}{voice 2}* Oh!{sleep 25} I know!",
"{face 1}{voice 2}* You're trying to head&  back to the surface,&  right?",
"{face 2}{voice 2}* I'll just tag along!",
"{face 1}{voice 2}* I know a few shortcuts!",
"{face 1}{voice 2}* Nobody'll know you were&  even here!",
"{face 3}{voice 2}* Oh, wait, I forgot to&  ask!",
]);

cutscene_choice(cutscene,
"{face 1}{voice 2}* What's your name?",
"  {choice 0}Odin       {choice 1}...",
function(cutscene, choice) {
	if choice == 0 {
		cutscene_dialogue(cutscene, [
		"{face 1}{voice 2}* Nice to meetcha, Odin!",
		"{face 2}{voice 2}* I'll be up ahead!",
		]);
	} else {
		cutscene_dialogue(cutscene, [
		"{face 3}{voice 2}* ...",
		"{face 1}{voice 2}* Uhm,{sleep 30} that's okay!",
		"{face 1}{voice 2}* I'll,{sleep 35} uhm,{sleep 40} be up ahead!",
		]);
	}
});

cutscene_char_move(cutscene, char_follower_0, DIR.RIGHT, 90);
cutscene_char_move(cutscene, char_follower_0, DIR.DOWN, 80);

cutscene_player_move(cutscene, true);