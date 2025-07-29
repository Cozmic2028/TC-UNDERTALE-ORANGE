item_taken = Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.UNRESPAWNABLE)
if item_taken = true {instance_destroy();}

event_inherited();

dir_locked=true;