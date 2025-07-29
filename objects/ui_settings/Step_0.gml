if (Input_IsPressed(INPUT.UP)) {
    if (_choice > 0) {
        _choice--;
        audio_play_sound(snd_menu_switch, 0, false);
    }
}
else if (Input_IsPressed(INPUT.DOWN)) {
    if (_choice < array_length(options) - 1) {
        _choice++;
        audio_play_sound(snd_menu_switch, 0, false);
    }
}
else if (Input_IsHeld(INPUT.RIGHT)) {
    if (_choice == 0) { 
        master_volume = clamp(master_volume + 0.01, 0, 1);
		audio_master_gain(master_volume);
    }
}
else if (Input_IsHeld(INPUT.LEFT)) {
    if (_choice == 0) {
        master_volume = clamp(master_volume - 0.01, 0, 1);
		audio_master_gain(master_volume);
    }
}
else if (Input_IsPressed(INPUT.CONFIRM)) {
    switch (_choice) {
        case 1:
            board = !board;
            if (board) {
                Border_SetEnabled(false);
            } else {
                Border_SetEnabled(true);
            }
            break;
		case 2:
			window_set_fullscreen(!window_get_fullscreen());
		break;
		case 3:
		controls = !controls;
        if controls{
                Input_Unbind(INPUT.UP)
                        Input_Unbind(INPUT.DOWN)
                        Input_Unbind(INPUT.LEFT)
                        Input_Unbind(INPUT.RIGHT)
                Input_Bind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,vk_up)
                        Input_Bind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,vk_down)
                        Input_Bind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,vk_left)
                        Input_Bind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,vk_right)
                        global.controls=false
         }
         else{
                        Input_Unbind(INPUT.UP)
                        Input_Unbind(INPUT.DOWN)
                        Input_Unbind(INPUT.LEFT)
                        Input_Unbind(INPUT.RIGHT)
                        Input_Bind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,ord("W"))
                        Input_Bind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,ord("S"))
                        Input_Bind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,ord("A"))
                        Input_Bind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,ord("D"))
                        global.controls=true
         }
		 break;
		case 4:
		run = !run;
		if !run{
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.AUTO_RUN, true);
		}
		else{
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.AUTO_RUN, false);
		}
		break;
        case 5:
            instance_destroy();
			room_goto(room_menu)
        break;
    }
    audio_play_sound(snd_menu_confirm, 0, false);
}
else if (Input_IsPressed(INPUT.CANCEL)) {
    instance_destroy();
	room_goto(room_menu)
}
