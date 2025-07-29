_choice = 0;
options = ["Master Volume","Border","Fullscreen","Controls","Auto-Run", "Back"];


//config_vol_edit = false;
master_volume = 1.0;
audio_master_gain(master_volume);
if border._enabled=false{
board = true;
}
else{
board = false;
}

controls = false

if !Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.AUTO_RUN){
run = true
}
else{
run = false
}
