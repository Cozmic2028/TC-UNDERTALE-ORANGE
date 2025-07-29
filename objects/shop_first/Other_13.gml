/// @description Destroy Text
if shopping = "noone"{
if instance_exists(inst_item_info){
		instance_destroy(inst_item_info)	
		}
}
if shopping != "noone"{
	if instance_exists(inst_welcome){
		instance_destroy(inst_welcome)	
		}
}
if buychoose = false{
if instance_exists(inst_item_info){
		instance_destroy(inst_item_info)	
		}
	if instance_exists(inst_buy_text){
		instance_destroy(inst_buy_text)	
		}
		if instance_exists(inst_no_money){
		instance_destroy(inst_no_money)	
		}
		if instance_exists(inst_buy_item){
		instance_destroy(inst_buy_item)	
		}if instance_exists(inst_full){
		instance_destroy(inst_full)	
		}
}else{
	
		if instance_exists(inst_no_money){
		instance_destroy(inst_no_money)	
		}
		if instance_exists(inst_buy_item){
		instance_destroy(inst_buy_item)	
		}if instance_exists(inst_full){
		instance_destroy(inst_full)	
		}
}








