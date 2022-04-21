switch(now_round){
	case(r.battle):
	{
		//if(!position_meeting(x ,y - sprite_height / 2,obj_wall_draw || obj_wall_draw_other))
		//{
		//	if(position_meeting(x ,y - sprite_height / 2,obj_wall_block))
		//	{
		//		show_message("click");
		//		y = yprevious;
		//		if(angle == 180)
		//		{
		//			can_jump = true;
		//			down_speed_1 = 0;
		//		}
		//	}
			
		//}
		//if(!position_meeting(x ,y + sprite_height / 2,obj_wall_draw || obj_wall_draw_other))
		//{
		//	if(position_meeting(x ,y + sprite_height / 2,obj_wall_block))
		//	{
		//		y = yprevious;
		//		if(angle == 0)
		//		{
		//			can_jump = true;
		//			down_speed_1 = 0;
		//		}
		//		moveSpeed = 0;
		//	}
			
			
		//}
		//if(!position_meeting(x - sprite_width / 2,y ,obj_wall_draw || obj_wall_draw_other))
		//{
		//	if(position_meeting(x - sprite_width / 2,y ,obj_wall_block))
		//	{
		//		x = xprevious;
		//		if(angle == 270)
		//		{
		//			can_jump = true;
		//			down_speed_1 = 0;
		//		}
		//	}
			
		//}
		//if(!position_meeting(x + sprite_width / 2,y ,obj_wall_draw || obj_wall_draw_other))
		//{
		//	if(position_meeting(x + sprite_width / 2,y ,obj_wall_block))
		//	{
		//		x = xprevious;
		//		if(angle == 90)
		//		{
		//			can_jump = true;
		//			down_speed_1 = 0;
		//		}
		//	}
			
		//}
		if(keyboard_check(ord("X")))
		{
			moveSpeed = 1;
		}else
		{
			moveSpeed = 3;
		}
		switch(colour)
		{
			case (c_red):{
				
				if(keyboard_check(vk_up)){
					y -= moveSpeed;
				}
		
				if(keyboard_check(vk_down)){
					y += moveSpeed;
				}
		
				if(keyboard_check(vk_left)){
					x -= moveSpeed;
		
				}
		
				if(keyboard_check(vk_right)){
					x += moveSpeed;
				}
				break;
			}
			case (c_blue):{
				switch(angle)
				{
					case(0):
					{
						if(keyboard_check(vk_left)){
							if(!position_meeting(x - sprite_width / 2,y,obj_wall_block)){
								x -= moveSpeed;
							}
		
						}
		
						if(keyboard_check(vk_right)){
							if(!position_meeting(x + sprite_width / 2,y,obj_wall_block)){
								x += moveSpeed;
							}
						}
						y+=down_speed_1;
						down_speed_1 += 0.05;
						//if(keyboard_check_pressed(vk_up))
						//{
						//	down_speed_1 = 1;
						//}
						if(keyboard_check(vk_up) && can_jump)
						{
							y -= jump_speed;
						}
						if(down_speed_1 > jump_speed || keyboard_check_released(vk_up))
						{
							can_jump = false;
						}
						break;
					}
					case(180):
					{
						if(keyboard_check(vk_left)){
							if(!position_meeting(x - sprite_width / 2,y,obj_wall_block)){
								x -= moveSpeed;
							}
		
						}
		
						if(keyboard_check(vk_right)){
							if(!position_meeting(x + sprite_width / 2,y,obj_wall_block)){
								x += moveSpeed;
							}
						}
						y-=down_speed_1;
						down_speed_1 += 0.05;
						//if(keyboard_check_pressed(vk_up))
						//{
						//	down_speed_1 = 1;
						//}
						if(keyboard_check(vk_down) && can_jump)
						{
							y += jump_speed;
						}
						if(down_speed_1 > jump_speed || keyboard_check_released(vk_down))
						{
							can_jump = false;
						}
						break;
					}
					case(90):
					{
						if(keyboard_check(vk_up)){
							if(!position_meeting(x,y-sprite_height/2,obj_wall_block)){
								y -= moveSpeed;
							}
						}
		
						if(keyboard_check(vk_down)){
							if(!position_meeting(x,y+sprite_height/2,obj_wall_block)){
								y += moveSpeed;
							}
						}
						x+=down_speed_1;
						down_speed_1 += 0.05;
						//if(keyboard_check_pressed(vk_up))
						//{
						//	down_speed_1 = 1;
						//}
						if(keyboard_check(vk_left) && can_jump)
						{
							x -= jump_speed;
						}
						if(down_speed_1 > jump_speed || keyboard_check_released(vk_left))
						{
							can_jump = false;
						}
						break;
					}
					case(270):
					{
						if(keyboard_check(vk_up)){
							if(!position_meeting(x,y-sprite_height/2,obj_wall_block)){
								y -= moveSpeed;
							}
						}
		
						if(keyboard_check(vk_down)){
							if(!position_meeting(x,y+sprite_height/2,obj_wall_block)){
								y += moveSpeed;
							}
						}
						x-=down_speed_1;
						down_speed_1 += 0.05;
						//if(keyboard_check_pressed(vk_up))
						//{
						//	down_speed_1 = 1;
						//}
						if(keyboard_check(vk_right) && can_jump)
						{
							x += jump_speed;
						}
						if(down_speed_1 > jump_speed || keyboard_check_released(vk_right))
						{
							can_jump = false;
						}
						break;
					}
				}
				break;
			}
		}
		
	}
}
