/// @description Input your code.
if(keyboard_check_pressed(vk_f1))
{
	game_restart();
}

if(keyboard_check_pressed(vk_f2))
{
	j++;
	if(j > 3)
	{
		j = 0;
	}
	scr_dump(down_speed_1,j);
}
if(down_speed_1 > 4)
{
	down_speed_1 = 4;
}
if(keyboard_check_pressed(vk_f3))
{
	scr_wall(x,y,50);
}
for(var i = 0;i < ds_list_size(WALL);i++)
{
	WALL[| i][| 4] = x;
	WALL[| i][| 5] = y;
}
image_blend = colour;
image_angle = angle;
draw_text(10,10,"Angle:"+string(angle) + "\nMove speed:" + string(moveSpeed)+ "\nDown speed:" + string(down_speed_1)+ "\nJump speed:" + string(jump_speed) + "\nWALLNUMBER:" + string(ds_list_size(WALL)) + "\nISWALL" + string(!position_meeting(x,y,obj_wall_draw_other)));
draw_self();
