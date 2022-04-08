/// @description Input your code.
draw_set_alpha(image_alpha);
if(image_alpha == 1)
{
	x1 = lerp(x1,camera_get_view_x(view_camera[0]),0.1);
	y1 = lerp(y1,camera_get_view_y(view_camera[0]) + 300,0.1);
	if(!instance_exists(printer_creat_text))&&(ds_list_size(need_print_text) > 0)
	{
		
		print(ds_list_find_value(need_print_text,talk_num),camera_get_view_x(view_camera[0]) + 20,camera_get_view_y(view_camera[0])+320,20,20,c_white,0,Font1,snd_talk);
		ds_list_delete(need_print_text,0);
	}else if(!instance_exists(printer_creat_text)){
		image_alpha = 0;
		talk_num = 0;
		can_move = true;
	}
	draw_self();
	x = x1;
	y = y1;
}else{
	x1 = -100;
	y1 = -100;
}

