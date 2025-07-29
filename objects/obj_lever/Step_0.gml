//if place_meeting(x,y,char_player) && !active {
//	event_user(2)
//}else if !place_meeting(x,y,char_player) && active {
//	event_user(4)
//}

if (!active && toggle_up) {
    Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.LEVER, 0);
    event_user(3);
} else if (active && toggle_down) {
    Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.LEVER, 1);
    event_user(1);
}