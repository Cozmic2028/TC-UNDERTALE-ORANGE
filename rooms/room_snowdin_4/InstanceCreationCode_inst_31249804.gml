cutscene_player_move(cutscene, false);

cutscene_dialogue(cutscene, [
"{face 3}{voice 2}* Hm?",
]);
cutscene_choice(cutscene,
"{face 1}{voice 2}* You got a question?",
"  {choice 0}What's your name?       {choice 1}Nope.",
function(cutscene, choice) {
	if choice == 0 {
		cutscene_dialogue(cutscene, [
		"{face 1}{voice 2}* Oh! I'm...",
		"{face 3}{voice 2}* Well, I guess I...",
		"{face 1}{voice 2}* I don't have one, haha!",
		"{face 3}{voice 2}* ...",
		"{face 3}{voice 2}* Did you want to&  help me make one?",
		"{face 3}{voice 2}* ... Slithers?",
		"{face 1}{voice 2}* ...",
		"{face 2}{voice 2}* I love it!",
		"{face 1}{voice 2}* Don't worry, pal!",
		"{face 1}{voice 2}* Your buddy Slithers&  is gonna be with ya&  through thick 'n thin!",
		]);
	} else {
		cutscene_dialogue(cutscene, [
		"{face 1}{voice 2}* Oh, okay!",
		]);
	}
});


cutscene_player_move(cutscene, true);