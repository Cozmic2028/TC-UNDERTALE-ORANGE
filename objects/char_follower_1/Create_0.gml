
event_inherited();

char_id=100;


image_xscale=1
image_yscale=1

idle_sprite = [spr_aiden_up,spr_aiden_down,spr_aiden_left,spr_aiden_left]
move_sprite = [spr_aiden_up,spr_aiden_down,spr_aiden_left,spr_aiden_left]
run_sprite = [spr_aiden_up,spr_aiden_down,spr_aiden_left,spr_aiden_left]

res_idle_sprite[DIR.UP]=idle_sprite[0];
res_idle_sprite[DIR.DOWN]=idle_sprite[1];
res_idle_sprite[DIR.LEFT]=idle_sprite[2];
res_idle_sprite[DIR.RIGHT]=idle_sprite[3];
res_move_sprite[DIR.UP]=move_sprite[0];
res_move_sprite[DIR.DOWN]=move_sprite[1];
res_move_sprite[DIR.LEFT]=move_sprite[2];
res_move_sprite[DIR.RIGHT]=move_sprite[3];