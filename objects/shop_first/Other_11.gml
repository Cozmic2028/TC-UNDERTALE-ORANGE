/// @description Gold option
// I think this can be improved
if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.LANGUAGE)==0{//english
if buysel=0{
	g="25G ?"
}
if buysel=1{
	g="70G ?"
}
if buysel=2{
	g="10G ?"
}
if buysel=3{
	g="90G ?"
}
}
else if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.LANGUAGE)==1{//rus
	if buysel=0{
	g="25М ?"
}
if buysel=1{
	g="70М ?"
}
if buysel=2{
	g="10М ?"
}
if buysel=3{
	g="90М ?"
}
}