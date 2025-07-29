/// @description Texts here
// They are needed for translation, for example English, Japanese, Chinese, Russian e t c 
/*
//example
if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.LANGUAGE)==1
welcome_text="{speed 2}* Добро пожаловать в мой&  магазин."
else if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.LANGUAGE)==2
welcome_text="{speed 2}* 私のショップへようこそ。"
else
welcome_text="{speed 2}* Welcome to my shop."
*/
event_user(1)
_face="{char_link 88}" //coming soon
_end="{pause}{clear}{end}"
if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.LANGUAGE)==0{//english

welcome_text=_face+"{speed 2}* Welcome to my shop."//first text

nomoney_text=_face+"{speed 2}You need&more money";
buy_text=_face+"{speed 2}Thank &you& kindly!";
fulltext=_face+"{speed 2}You have&too many&items.";//fullitems
buy_item_text=_face+"{speed 2}Thanks for&your&purchase.";

sure_buy="{instant true}Buy it for&"+string(g)

sell_text=_face+"{speed 2}* Huh?{sleep 25}&* Sell somethin'?{sleep 30}&* Does this look like a&  pawn shop?{pause}{clear}* I don't know how it works where&  you come from... but...{pause}{clear}* If I started spending money&  on old gloves and &  used bandanas,{sleep 15} I'd be out of &  business in a jiffy!"+_end;
talk_text=_face+"{speed 2}Care to&chat?"

//talk texts
talk_text_0=_face+"{speed 2}* its zero text"+_end
talk_text_1=_face+"{speed 2}* its first text"+_end
talk_text_2=_face+"{speed 2}* its second text"+_end
talk_text_3=_face+"{speed 2}* its three text"+_end
//
byetext=_face+"{speed 2}* Goodbye."+_end
//item info texts 
item_info_text_0="{instant true}{speed 2}Pie&Heal - MAX&HP."
item_info_text_1="{instant true}{speed 2}TML&Heal - MAX&HP.{sleep 5}&Engine &creator."
item_info_text_2="{instant true}{speed 2}ITEM&Heal - 0&HP."
item_info_text_3="{instant true}{speed 2}Soul&It's soul&does not &cure."
} else if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.LANGUAGE)==1{//english

welcome_text=_face+"{speed 2}* Welcome to my shop."//first text

nomoney_text=_face+"{speed 2}You need&more money";
buy_text=_face+"{speed 2}What Do &you want?";
fulltext=_face+"{speed 2}You have&too many&items.";//fullitems
buy_item_text=_face+"{speed 2}Thanks for&your&purchase.";

sure_buy="{instant true}Buy it for&"+string(g)

sell_text=_face+"{speed 2}* Huh?{sleep 25}&* Sell somethin'?{sleep 30}&* Does this look like a&  pawn shop?{pause}{clear}* I don't know how it works where&  you come from... but...{pause}{clear}* If I started spending money&  on old branches and &  used bandages,{sleep 15} I'd be out of &  business in a jiffy!"+_end;
talk_text=_face+"{speed 2}Care to&chat?"

//talk texts
talk_text_0=_face+"{speed 2}* its zero text"+_end
talk_text_1=_face+"{speed 2}* its first text"+_end
talk_text_2=_face+"{speed 2}* its second text"+_end
talk_text_3=_face+"{speed 2}* its three text"+_end
//
byetext=_face+"{speed 2}* Goodbye."+_end
//item info texts 

item_info_text_0="{instant true}{speed 2}Pie&Heal - MAX&HP."
item_info_text_1="{instant true}{speed 2}TML&Heal - MAX&HP.{sleep 5}&Engine &creator."
item_info_text_2="{instant true}{speed 2}ITEM&Heal - 0&HP."
item_info_text_3="{instant true}{speed 2}Soul&It's soul&does not &cure."
	
	
}


