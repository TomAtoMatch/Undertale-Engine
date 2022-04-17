// gamemakerSudio2.3.0的脚本资产已更改，请参见// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_dump(down_speed,dir){
	angle = 360 - dir * 90;
	colour = c_blue;
	down_speed_1 = down_speed
	switch (dir)
	{
		case 0:
		{
			physics_world_gravity(0,down_speed);
			break;
		}
		case 1:
		{
			physics_world_gravity(down_speed,0);
			break;
		}
		case 2:
		{
			physics_world_gravity(0,-down_speed);
			break;
		}
		case 3:
		{
			physics_world_gravity(-down_speed,0);
			break;
		}
	}
}