if !audio_is_playing(shop_theme)
BGM_Play(0,shop_theme)
soul_anim = 20 //spd soul anim default 20
settings_options = ["Buy","Sell","Talk","Exit",];
//gold_options=["25G","70G","10G","90G","Exit",]
//buy_options =[" - Pie"," - TML"," - ITEM"," - Soul","",]

buy_options[0] = " - Pie";
buy_options[1] = " - TML";
buy_options[2] = " - ITEM";
buy_options[3] = " - Soul";
buy_options[4] = "";

gold_options[0] = "25G";
gold_options[1] = "70G";
gold_options[2] = "10G";
gold_options[3] = "90G";
gold_options[4] = "Exit";

buy_choose =["Yes","No"];

//talk_options=["Say hello","What to do here","Town history","Your life","Exit",]
talk_options[0] = "Say hello"
talk_options[1] = "What to do here"
talk_options[2] = "Where are we?"
talk_options[3] = "Your life"
talk_options[4] = "Exit"
shopping = "noone"

itemcom_y=124;



sel = 0
_prefix="{gui true}{instant true}{shadow false}{font 1}{scale 2}";
_soul_x = 230;
_soul_y = 138;

_soul_alpha = 1;
talking=false
buychoose=false;

shopBG=spr_shop_bg;													//배경 스프라이트
BGnum=0;															//배경 스프라이트 번
shopkeeper=spr_shopkeeper;											//상점 주인 스프라이트
SKnum=0;		
SK_x=160;
SK_y=128;

//instance_create_depth(160,124,-900,face_shop)
buy=false;
sell=false;
talk=false;
_exit=false;
buysel = 0;
sellsel = 0;
talksel = 0;
exitsel = 0;
choicesel = 0;
talk=false
inst_welcome=noone;
g=""

inst_no_money=noone;
inst_full=noone;
inst_buy_item=noone;
inst_sell_text=noone;
inst_talk_text=noone;
inst_text=noone;
inst_buy_text=noone;
inst_item_info=noone;