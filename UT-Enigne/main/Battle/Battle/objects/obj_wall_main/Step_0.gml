/// @description Input your code.
ds_list_replace(main_wall,4,X);
ds_list_replace(main_wall,5,Y);
ds_list_replace(main_wall,6,WIDTH);
ds_list_replace(main_wall,7,HEIGHT);
LEFT_UP_WALL.image_xscale = WIDTH;
LEFT_UP_WALL.x = X - WIDTH / 2;
LEFT_UP_WALL.y = Y - HEIGHT / 2;
RIGHT_UP_WALL.image_xscale = HEIGHT;
RIGHT_UP_WALL.x = X + WIDTH / 2;
RIGHT_UP_WALL.y = Y - HEIGHT / 2;
RIGHT_DOWN_WALL.image_xscale = WIDTH;
RIGHT_DOWN_WALL.x = X + WIDTH / 2;
RIGHT_DOWN_WALL.y = Y + HEIGHT / 2;
LEFT_DOWN_WALL.image_xscale = HEIGHT;
LEFT_DOWN_WALL.x = X - WIDTH / 2;
LEFT_DOWN_WALL.y = Y + HEIGHT / 2;
if(now_round == r.act || now_round == r.show)
{
	if(round(WIDTH) == round(560))
	{
		if(creat == false)
		{
			
		}
	}
	WIDTH = lerp(WIDTH,560,0.1);
	HEIGHT = lerp(HEIGHT,140,0.1);
}else{
	WIDTH = lerp(WIDTH,wall_width,0.1);
	HEIGHT = lerp(HEIGHT,wall_height,0.1);
}
for(var i = 0;i < ds_list_size(WALL);i++)
{
	WALL[| i][| 0].x = WALL[| i][| 4] - WALL[| i][| 6] / 2;
	WALL[| i][| 0].y = WALL[| i][| 5] - WALL[| i][| 7] / 2;
	WALL[| i][| 1].x = WALL[| i][| 4] + WALL[| i][| 6] / 2;
	WALL[| i][| 1].y = WALL[| i][| 5] - WALL[| i][| 7] / 2;
	WALL[| i][| 2].x = WALL[| i][| 4] + WALL[| i][| 6] / 2;
	WALL[| i][| 2].y = WALL[| i][| 5] + WALL[| i][| 7] / 2;
	WALL[| i][| 3].x = WALL[| i][| 4] - WALL[| i][| 6] / 2;
	WALL[| i][| 3].y = WALL[| i][| 5] + WALL[| i][| 7] / 2;
}
if(!instance_exists(printer_creat_text)){
	instance_create_depth(320,320,-110,obj_main_player_soul);
	creat = true;
	scr_print("THIS IS A TEST WALL TEXT.$ENJOY IT!",WALL_TEXT_START,WALL_TEXT_SPACE,c_white,0,fnt_wall,snd_wall,3);
}
