/// @description Don't touch
// You can write your code in this editor
if !instance_exists(inst_text){
instance_destroy(inst_text)	
talking=false
shopping = "talk"
event_user(0)
	if !instance_exists(inst_talk_text){
		inst_talk_text = instance_create_depth(225,130,-1000,text_typer)
			inst_talk_text.text=talk_text
		}
}else
alarm[4]=2

