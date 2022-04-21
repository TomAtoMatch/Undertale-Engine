// gamemakerSudio2.3.0的脚本资产已更改，请参见// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_wall(x,y,length){
	static n = 0;
	
	var wall = ds_list_create();
	ds_list_add(WALL,wall);
	ds_list_add(wall,scr_creat_wall(x,y,length,5,0));
	ds_list_add(wall,scr_creat_wall(x + length,y,length,5,270));
	ds_list_add(wall,scr_creat_wall(x + length,y + length,length,5,180));
	ds_list_add(wall,scr_creat_wall(x,y + length,length,5,90));
	ds_list_add(wall,x);
	ds_list_add(wall,y);
	ds_list_add(wall,length);
	ds_list_add(wall,length);
	ds_list_add(wall,length);
	var a =instance_create_depth(x,y,-110,obj_wall_draw_other);
	a.num = n;
	ds_list_add(wall,a);
	n++;
}