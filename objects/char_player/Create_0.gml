event_inherited();

char_id=0;

res_idle_sprite[DIR.UP]=spr_char_frisk_up;
res_idle_sprite[DIR.DOWN]=spr_char_frisk_down;
res_idle_sprite[DIR.LEFT]=spr_char_frisk_right;
res_idle_sprite[DIR.RIGHT]=spr_char_frisk_right;
res_move_sprite[DIR.UP]=spr_char_frisk_up;
res_move_sprite[DIR.DOWN]=spr_char_frisk_down;
res_move_sprite[DIR.LEFT]=spr_char_frisk_right;
res_move_sprite[DIR.RIGHT]=spr_char_frisk_right;
res_run_sprite[DIR.UP]=spr_odin_up_run;
res_run_sprite[DIR.DOWN]=spr_odin_down_run;
res_run_sprite[DIR.LEFT]=spr_odin_right_run;
res_run_sprite[DIR.RIGHT]=spr_odin_right_run;

moveable=true;
_moveable_dialog=true;
_moveable_menu=true;
_moveable_save=true;
_moveable_warp=true;
_moveable_encounter=true;
_moveable_box=true;

follow_delay = 14

if room == room_snowdin_4 {
	follower = [char_follower_0]
}
else{
	follower = [char_follower]
}
//follower = []
inst_follower = [noone]
if(array_length(follower) > 0){
        moves = ds_list_create()
        repeat(follow_delay*array_length(follower)){
                ds_list_add(moves,[0,0,0,0,0]);
        }
        pos = ds_list_create()
        repeat(follow_delay*array_length(follower)){
                ds_list_add(pos,[x,y]);
        }
}