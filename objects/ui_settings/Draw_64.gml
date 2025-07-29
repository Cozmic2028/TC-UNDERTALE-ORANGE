
draw_set_color(c_white)

for (var i = 0; i < array_length(options); i++) {
    var yy = 120 + i * 40;
    var text = options[i];
	//var colC = make_color_rgb(0, 255, 255);


        switch (i) {
        case 0: text += " [" + string(round(master_volume * 100)) + "%]"; break;
        case 1: text += board ? " [OFF]" : " [ON]"; break;
		case 2: 
		if !window_get_fullscreen(){
		text +=" [OFF]"; 
		}
		else{
		text +=" [ON]"; 
		}
		break;
		case 3: text += controls ? " [Arrows]" : " [WASD]"; break;
		case 4: text += run ? " [OFF]" : " [ON]"; break;
    }




    draw_text_transformed(140, yy, text,2,2,0);


    if (_choice == i) {
        draw_sprite(spr_battle_soul_red,0,80+6+37,yy+7);
    }
}