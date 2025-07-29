///@desc Name Check
var text="";
var valid=true;
switch(string_lower(_naming_name)){
	default:
		text=Lang_GetString("menu.confirm.title");
		break;
	case "chara":
	case "clover":
	case "cody":
	case "batty":
	case "melody":
	case "frisk":
	case "emily":
	valid=false;
		text=Lang_GetString("menu.confirm.title.aaaaaa");
		break;
	case "slithe":
		text=Lang_GetString("menu.confirm.title.alphys");
		valid=false;
		break;
	case "tyler":
		text=Lang_GetString("menu.confirm.title.alphy");
		valid=false;
		break;
	case "asgore":
		text=Lang_GetString("menu.confirm.title.asgore");
		valid=false;
		break;
	case "toriel":
		text=Lang_GetString("menu.confirm.title.toriel");
		valid=false;
		break;
	case "asriel":
		text=Lang_GetString("menu.confirm.title.asriel");
		valid=false;
		break;
	case "flowey":
		text=Lang_GetString("menu.confirm.title.flowey");
		valid=false;
		break;
	case "don":
		text=Lang_GetString("menu.confirm.title.sans");
		valid=false;
		break;
	case "papyru":
		text=Lang_GetString("menu.confirm.title.papyru");
		break;
	case "undyne":
		text=Lang_GetString("menu.confirm.title.undyne");
		valid=false;
		break;
	case "mtt":
		text=Lang_GetString("menu.confirm.title.mtt");
		break;
	case "odin":
		text=Lang_GetString("menu.confirm.title.chara");
		break;
}

_confirm_title=text;
_confirm_valid=valid;