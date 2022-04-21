/// @description Input your code.
globalvar moveSpeed,colour,now_round,angle,down_speed_1,jump_speed,can_jump;
globalvar enum r{
	act,
	show,
	talk,
	battle,
}
can_jump = true;
jump_speed = 3;
now_round = r.battle;
down_speed_1 = 0;
angle = 0;
moveSpeed = 3;
colour = c_red;
scr_main_wall();
globalvar WIDTH,HEIGHT,X,Y,WALL,wall_width,wall_height;

wall_width = 560;
wall_height = 140;
creat = false;

WALL = ds_list_create();
WIDTH = 0;
HEIGHT = 0;
X = 320;
Y = 320;
