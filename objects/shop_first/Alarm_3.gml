/// @description Talk
// You can write your code in this editor
event_user(0)
audio_play_sound(snd_menu_confirm,0,0)
	shopping = "listen"
	if instance_exists(inst_talk_text){
			instance_destroy(inst_talk_text)
		}
talking=true
switch talksel{
	case 0:
	if !instance_exists(inst_text){
	inst_text=instance_create_depth(20,130,-1000,text_typer)
	inst_text.text=talk_text_0
	}
	break;
	case 1:
	if !instance_exists(inst_text){
	inst_text=instance_create_depth(20,130,-1000,text_typer)
	inst_text.text=talk_text_1
}
	break;
	case 2:
	if !instance_exists(inst_text){
	inst_text=instance_create_depth(20,130,-1000,text_typer)
	inst_text.text=talk_text_2
	}
	break;
	case 3:
	if !instance_exists(inst_text){
	inst_text=instance_create_depth(20,130,-1000,text_typer)
	inst_text.text=talk_text_3
	}
	break;
	
}
