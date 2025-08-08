///@arg room
function Player_GetRoomName() {
    var ROOM=argument[0];

    var name="";

    switch(ROOM){
        case -1:
            name = "--";
            break;
        case room_area_0:
            name = "Waterfall...?";
            break;
        case room_area_1:
            name = "???";
            break;
		case room_area_demo:
            name = "??? - Puzzle Demo";
            break;
		case room_snowdin_2:
            name = "Snowdin - Crossroad";
			break;
		case room_snowdin_4:
            name = "Snowdin - Along the trees";
			break;
    }
    return name;


}