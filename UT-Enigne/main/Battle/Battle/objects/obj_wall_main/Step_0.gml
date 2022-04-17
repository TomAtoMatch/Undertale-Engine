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
WIDTH = lerp(WIDTH,560,0.1);
HEIGHT = lerp(HEIGHT,140,0.1);
if(!instance_exists(printer_creat_text))
	scr_print("THIS IS A TEST WALL TEXT.$ENJOY IT!",WALL_TEXT_START,WALL_TEXT_SPACE,c_white,0,fnt_wall,snd_wall,3);
