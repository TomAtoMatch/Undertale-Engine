// gamemakerSudio2.3.0的脚本资产已更改，请参见// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_creat_wall(x,y,length,width,angle){
	var WALL = instance_create_depth(x,y,WALLDEPTH,obj_wall_block);
	WALL.image_xscale = length;
	WALL.image_yscale = width;
	WALL.image_angle = angle;
	return WALL;	
}