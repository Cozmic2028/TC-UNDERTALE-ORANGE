if !Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.AUTO_RUN){
if(Input_IsHeld(INPUT.CANCEL)){
    move_speed[DIR.UP]=3;
    move_speed[DIR.DOWN]=3;
    move_speed[DIR.LEFT]=3;
    move_speed[DIR.RIGHT]=3;
    res_move_speed[DIR.UP]=1/2;
    res_move_speed[DIR.DOWN]=1/2;
    res_move_speed[DIR.LEFT]=1/2;
    res_move_speed[DIR.RIGHT]=1/2;
}else if(!Input_IsHeld(INPUT.CANCEL)){
    move_speed[DIR.UP]=2;
    move_speed[DIR.DOWN]=2;
    move_speed[DIR.LEFT]=2;
    move_speed[DIR.RIGHT]=2;
    res_move_speed[DIR.UP]=1/3;
    res_move_speed[DIR.DOWN]=1/3;
    res_move_speed[DIR.LEFT]=1/3;
    res_move_speed[DIR.RIGHT]=1/3;
}
}
else{
if(Input_IsHeld(INPUT.CANCEL)){
    move_speed[DIR.UP]=2;
    move_speed[DIR.DOWN]=2;
    move_speed[DIR.LEFT]=2;
    move_speed[DIR.RIGHT]=2;
    res_move_speed[DIR.UP]=1/3;
    res_move_speed[DIR.DOWN]=1/3;
    res_move_speed[DIR.LEFT]=1/3;
    res_move_speed[DIR.RIGHT]=1/3;
}else if(!Input_IsHeld(INPUT.CANCEL)){
    move_speed[DIR.UP]=3;
    move_speed[DIR.DOWN]=3;
    move_speed[DIR.LEFT]=3;
    move_speed[DIR.RIGHT]=3;
    res_move_speed[DIR.UP]=1/2;
    res_move_speed[DIR.DOWN]=1/2;
    res_move_speed[DIR.LEFT]=1/2;
    res_move_speed[DIR.RIGHT]=1/2;
}
}

var can_move=(moveable&&_moveable_dialog&&_moveable_menu&&_moveable_save&&_moveable_warp&&_moveable_encounter&&_moveable_box);
if(can_move){
        if(array_length(follower) > 0){
                if((xprevious != x||yprevious != y)){
                        if(ds_list_size(moves) > follow_delay*array_length(follower)){
                                while(ds_list_size(moves) > follow_delay*array_length(follower))ds_list_delete(moves,follow_delay*array_length(follower));
                        }
                        if(ds_list_size(pos) > follow_delay*array_length(follower)){
                                while(ds_list_size(pos) > follow_delay*array_length(follower))ds_list_delete(pos,follow_delay*array_length(follower));
                        }
                        ds_list_add(moves,[move[DIR.RIGHT]*(xprevious != x),move[DIR.UP]*(yprevious != y),move[DIR.LEFT]*(xprevious != x),move[DIR.DOWN]*(yprevious != y),Input_IsHeld(INPUT.CANCEL)]);
                        ds_list_add(pos,[x,y]);
                        for(i=0;i<array_length(follower);i+=1){
                                if(instance_exists(inst_follower[i])){
                                        for(j=0;j<4;j+=1){
                                                inst_follower[i].move[j*90] = moves[|follow_delay*i][j]*2;
                                                inst_follower[i].run = moves[|follow_delay*i][4];
                                        }
                                        inst_follower[i].x = pos[|follow_delay*i][0];
                                        inst_follower[i].y = pos[|follow_delay*i][1];
                                }
                        }
                        ds_list_delete(moves,0);
                        ds_list_delete(pos,0);
                }
        }
}
event_inherited();

