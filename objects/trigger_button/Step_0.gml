//if place_meeting(x,y,char_player) && !active {
//        event_user(2)
//}else if !place_meeting(x,y,char_player) && active {
//        event_user(4)
//}
_held=false
if player_press {
        if place_meeting(x,y,char_player) {
                _held=true
        }
}
if rock_press {
        if place_meeting(x,y,obj_rock) {
                _held=true
        }
}
if _held==true&&_held_previous=false {
        if !active {
                event_user(2)
        }else if active && toggle {
                event_user(4)
        }
}
if _held==false&&_held_previous=true&&!stay_down {
        if active {
                event_user(4)
        }else if !active && toggle {
                event_user(2)
        }
}






_held_previous=_held