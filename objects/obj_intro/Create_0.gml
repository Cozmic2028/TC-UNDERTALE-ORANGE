/// @description Insert description here
// You can write your code in this editor
depth=-1996
image_index=0
spd="{skippable false}{speed 2.7}{voice 1}{sleep 10}";
/*if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.LANGUAGE)==1{
	text=spd+"Давным-давно{sleep 25} две расы&правили Землёй:{sleep 5}&ЛЮДИ и МОНСТРЫ."
text1=spd+"Но однажды{sleep 15} между ними&вспыхнула война."
text2=spd+"После продолжительной&битвы{sleep 20} людям удалось&одежрать победу."
text3=spd+"И с помощью волшебного &заклятия они заключили&монстров под землю."
text4=spd+"Много лет спустя.{sleep 30}.{sleep 30}."
text5=spd+"ГОРА ЭББОТ&   201X"
text6=spd+"Легенды гласят,{sleep 5} что те,{sleep 15}&кто взбираются на гору,{sleep 5}&больше не возвращаются."
	

}else*/{
text=spd+"Long ago, Humans sealed&the race of monsters&underground with a magic&spell.";
text1=spd+"The monster king, although&peacefull, eventually&waged war...";
text2=spd+"And declared any human&to fall down.{sleep 5}.{sleep 10}.";
text3=spd+"Will die.";
text4=spd+"Present Day.{sleep 40}.{sleep 45}.";
text5=spd+"MT.EBOTT";
text6=spd+"Rumors have risen that&those who climb this&mountain never return.";	
text7=spd+"And on this very day,&another human seals&their fate.";
	
}

pressed=false

timer=0
check=false
t=noone
t1=noone
t2=noone
t3=noone
t4=noone
t5=noone
t6=noone
t7=noone
image_speed=0

BGM_Play(2,bgm_intro,false,14.50);
BGM_SetPitch(2,1)
//BGM_SetVolume(2,Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.MUSICVOLUME),1)
instance_create_depth(x,y,0,fader)