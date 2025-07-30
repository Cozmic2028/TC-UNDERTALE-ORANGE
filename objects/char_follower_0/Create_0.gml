event_inherited();

char_id=100;


image_xscale=1.3
image_yscale=1.3

idle_sprite = [spr_slithers_up,spr_slithers_down,spr_slithers_left,spr_slithers_left]
move_sprite = [spr_slithers_up,spr_slithers_down,spr_slithers_left,spr_slithers_left]
run_sprite = [spr_slithers_up,spr_slithers_down,spr_slithers_left,spr_slithers_left]

res_idle_sprite[DIR.UP]=idle_sprite[0];
res_idle_sprite[DIR.DOWN]=idle_sprite[1];
res_idle_sprite[DIR.LEFT]=idle_sprite[2];
res_idle_sprite[DIR.RIGHT]=idle_sprite[3];
res_move_sprite[DIR.UP]=move_sprite[0];
res_move_sprite[DIR.DOWN]=move_sprite[1];
res_move_sprite[DIR.LEFT]=move_sprite[2];
res_move_sprite[DIR.RIGHT]=move_sprite[3];