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

moveable=true;
_moveable_dialog=true;
_moveable_menu=true;
_moveable_save=true;
_moveable_warp=true;
_moveable_encounter=true;
_moveable_box=true;

follow_delay = 14
follower = [char_follower] //warning:reverse
//follower = []
inst_follower = [noone,noone]
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