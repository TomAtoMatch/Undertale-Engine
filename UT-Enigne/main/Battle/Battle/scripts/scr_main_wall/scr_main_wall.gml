// gamemakerSudio2.3.0的脚本资产已更改，请参见// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_main_wall(){
	globalvar main_wall;
	main_wall = ds_list_create();
	ds_list_add(main_wall,scr_creat_wall(40,250,0,5,0));
	ds_list_add(main_wall,scr_creat_wall(600,250,0,5,270));
	ds_list_add(main_wall,scr_creat_wall(600,390,0,5,180));
	ds_list_add(main_wall,scr_creat_wall(40,390,0,5,90));
	ds_list_add(main_wall,320);
	ds_list_add(main_wall,320);
	ds_list_add(main_wall,560);
	ds_list_add(main_wall,140);
	return main_wall;
}