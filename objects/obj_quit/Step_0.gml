inc_timer++;

image_alpha = inc_timer/180;
image_index = min(inc_timer/60);

if(inc_timer==180){
    game_end();
}