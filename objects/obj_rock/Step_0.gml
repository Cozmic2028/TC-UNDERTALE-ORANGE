var _x=x
var _y=y


if place_meeting(x-1,y,char_player) {
        _x++        
}else 
if place_meeting(x+1,y,char_player) {
        _x--        
}else if place_meeting(x,y-1,char_player) {
        _y++        
}else 
if place_meeting(x,y+1,char_player) {
        _y--        
}


var can_push = true
var list=_collision_list;
ds_list_clear(list);
var num=instance_place_list(_x,_y,rock_wall,list,false);
var procl=0;
repeat(num){
        var inst=list[|procl];
        if(instance_exists(inst)){
                if(inst.block_enabled){
                        can_push=false;
                        break;
                }
        }
        procl+=1;
}
if can_push {
        x=_x
        y=_y
}