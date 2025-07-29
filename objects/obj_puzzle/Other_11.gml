/// @description TriggerActivate

for (i=0;i<array_length(activate_toggle);i++) {
	var _puzzle_id=activate_toggle[i]
	with obj_puzzle {
		if _puzzle_id==puzzle_id {
			if active {
				make_sound=false
				event_user(4)	
			}else {
				make_sound=false
				event_user(2)
			}
		}
	}
}
for (i=0;i<array_length(activate_set_on);i++) {
	var _puzzle_id=activate_set_on[i]
	with obj_puzzle {
		if _puzzle_id==puzzle_id {
			if !active {
				make_sound=false
				event_user(2)	
			}
		}
	}
}
for (i=0;i<array_length(activate_set_off);i++) {
	var _puzzle_id=activate_set_off[i]
	with obj_puzzle {
		if _puzzle_id==puzzle_id {
			if active {
				make_sound=false
				event_user(4)	
			}
		}
	}
}

//if make_sound {
//	audio_play_sound(activate_sound,0,0)
//}