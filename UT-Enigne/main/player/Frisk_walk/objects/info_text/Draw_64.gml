/// @description Input your code.
draw_set_alpha(image_alpha);
if(image_alpha == 1)
{
	x1 = x1*0.95 + camera_get_view_x(view_camera[0])*0.05;
	y1 = y1*0.95 + camera_get_view_y(view_camera[0])*0.05;
	x2 = x2 * 0.95 + (x1 +camera_get_view_width(view_camera[0]))*0.05;
	y2 = y2 * 0.95 + (y1 +camera_get_view_width(view_camera[0]))*0.05;
	if(talk_num < ds_list_size(need_print_text))
	{
		if(!instance_exists(printer_creat_text))
		{
			
			print(ds_list_find_value(need_print_text,talk_num),camera_get_view_x(view_camera[0]) + 20,camera_get_view_y(view_camera[0])+340,20,20,c_white,0,Font1,snd_talk);
			
			talk_num += 1;
		}
		
	}else if(!instance_exists(printer_creat_text)){
		image_alpha = 0;
		talk_num = 0;
		can_move = true;
	}
}else{
	x1 = 0;
	y1 = 0;
}
for(var i = 0;i<5;i++)
{
	draw_set_colour(c_white);
	draw_rectangle(x1 + i,y1 + 320 + i,x2 - i,y2 + 480 - i,0);
	draw_set_colour(c_black);
	draw_rectangle(x1 + 4,y1 + 320 + 4,x2 - 4,y2 + 480 - 4,0);
}
