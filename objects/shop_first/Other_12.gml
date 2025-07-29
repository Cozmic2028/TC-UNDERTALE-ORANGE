/// @description Soul_Anim 
if shopping = "buy"{
	if buychoose = false{
	Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,210,soul_anim);
	switch buysel{
		case 1:
	
	Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,158,-20,soul_anim);
	
	break;
	
	case 2:
	Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,178,-40,soul_anim);
	
	break;
	
	case 3:
	Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-60,soul_anim);
	
	break;
	
	case 4:
	Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,218,-80,soul_anim);
	break;
	}
	}else{
		switch choicesel{
			case 0:
Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,210,-190,soul_anim)
		if buysel=0{
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,183,-45,soul_anim);
		}
		if buysel=1{
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,183,-25,soul_anim);
		}
		if buysel=2{
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,183,-5,soul_anim);
		}
		if buysel=3{
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,183,15,soul_anim);
		}	
break;	
case 1:
	Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,210,-190,soul_anim)
		if buysel=0{
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-60,soul_anim);
		}
		if buysel=1{
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-40,soul_anim);
		}
		if buysel=2{
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-20,soul_anim);
		}
		if buysel=3{
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,0,soul_anim);		
}	

break;
		}
		
	}
	
	
}

if shopping = "talk"{
Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,210,soul_anim);
	switch talksel{
		case 0:
	
	Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,138,+40,soul_anim);
	
	break;
		case 1:
	
	Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,158,+20,soul_anim);
	
	break;
	
	
	case 3:
	Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,198,-20,soul_anim);
	
	break;
	
	case 4:
	Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,218,-40,soul_anim);
	break;
	}	
	
}







