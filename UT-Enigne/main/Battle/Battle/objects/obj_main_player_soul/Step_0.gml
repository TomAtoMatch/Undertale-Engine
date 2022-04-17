/// @description Input your code.
if(keyboard_check(vk_up))
{
	phy_position_y -= moveSpeed;
}
if(keyboard_check(vk_down))
{

	phy_position_y += moveSpeed;
}
if(keyboard_check(vk_left))
{

	phy_position_x -= moveSpeed;
}
if(keyboard_check(vk_right))
{
	phy_position_x += moveSpeed;
}
if(down_speed_1 == 0)
{
	if(position_meeting(phy_position_x,phy_position_y - 4,obj_wall_block))
		phy_position_y += moveSpeed;
	if(position_meeting(phy_position_x,phy_position_y + 4,obj_wall_block))
		phy_position_y -= moveSpeed;
	if(position_meeting(phy_position_x - 4,phy_position_y,obj_wall_block))
		phy_position_x += moveSpeed;
	if(position_meeting(phy_position_x + 4,phy_position_y,obj_wall_block))
		phy_position_x -= moveSpeed;
}else{
	colour = c_blue;
	if(position_meeting(phy_position_x,phy_position_y - 4,obj_wall_block) && angle = 180)
		phy_position_y += down_speed_1;
	else if(position_meeting(phy_position_x,phy_position_y - 4,obj_wall_block))
		phy_position_y += moveSpeed;

	if(position_meeting(phy_position_x,phy_position_y + 4,obj_wall_block) && angle = 0)
		phy_position_y -= down_speed_1;
	else if(position_meeting(phy_position_x,phy_position_y + 4,obj_wall_block))
		phy_position_y -= moveSpeed;
		
	if(position_meeting(phy_position_x - 4,phy_position_y,obj_wall_block) && angle = 90)
		phy_position_x += down_speed_1;
	else if	(position_meeting(phy_position_x - 4,phy_position_y,obj_wall_block))
		phy_position_x += moveSpeed;
	
	if(position_meeting(phy_position_x + 4,phy_position_y,obj_wall_block) && angle = 270)
		phy_position_x -= down_speed_1;
	else if(position_meeting(phy_position_x + 4,phy_position_y,obj_wall_block))
		phy_position_x -= moveSpeed;
		
}
if(angle >= 360)
{
	angle -= 360;
}


if(keyboard_check_pressed(vk_f1))
{
	game_restart();
}

