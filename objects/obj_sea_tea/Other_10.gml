if Item_IsSlotValid(Item_GetNumber()) {
	Dialog_Add("* You got the Sea Tea.");
}else {
	Dialog_Add("* You're carrying too many&items.");
}

if Item_GetNumber()<8 {
Dialog_Start();
Item_Add(item_sea_tea);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.UNRESPAWNABLE, true);
//show_debug_message(string(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.RESPAWNABLE, true)));
instance_destroy();
}