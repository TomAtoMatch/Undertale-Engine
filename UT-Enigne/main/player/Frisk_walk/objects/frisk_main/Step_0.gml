/// @description Input your code.
depth = -phy_position_y;
if(can_move)
{
	if(keyboard_check(vk_up))
	{
		image_xscale = 2;
		image_speed = 2;
		sprite_index = spr_frisk_up;
		phy_position_y -= move_speed;
	}
	if(keyboard_check(vk_down))
	{
		image_xscale = 2;
		image_speed = 2;
		sprite_index = spr_frisk_down;
		phy_position_y += move_speed;
	}
	if(keyboard_check(vk_right))
	{
		image_xscale = 2;
		image_speed = 2;
		sprite_index = spr_frisk_x;
		phy_position_x += move_speed;
	}
	if(keyboard_check(vk_left))
	{
		image_xscale = -2;
		image_speed = 2;
		sprite_index = spr_frisk_x;
		phy_position_x -= move_speed;
	}
	if(keyboard_check(vk_nokey))
	{
		image_speed = 0;
		image_index = 0;
	}
	if(keyboard_check_pressed(ord("C")))
	{
		is_check = true;
		can_move = false;
	}
}else{
	image_speed = 0;
	image_index = 0;
}

	
