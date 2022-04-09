/// @description Input your code.
draw_set_alpha(image_alpha);
if(image_alpha == 1)
{
	x1 = lerp(x1,camera_get_view_x(view_camera[0]),0.1);
	y1 = lerp(y1,camera_get_view_y(view_camera[0]) + 300,0.1);
	if(!instance_exists(printer_creat_text))&&(ds_list_size(need_print_text) > 0)
	{
		
		print(ds_list_find_value(need_print_text,talk_num),camera_get_view_x(view_camera[0]) + 20,camera_get_view_y(view_camera[0])+320,20,20,ds_list_find_value(need_print_color,0),0,ds_list_find_value(need_print_font,0),ds_list_find_value(need_print_sound,0));
		ds_list_delete(need_print_color,0);
		ds_list_delete(need_print_font,0);
		ds_list_delete(need_print_sound,0);
		ds_list_delete(need_print_text,0);
		if(ds_list_size(need_print_head) != 0)
		{
		
			head_picture = ds_list_find_value(need_print_head,0);
			ds_list_delete(need_print_head,0);
		}else{
			head_picture = 0;
		}
	}else if(!instance_exists(printer_creat_text)){
		image_alpha = 0;
		talk_num = 0;
		can_move = true;
	}
	draw_self();
	x = x1;
	y = y1;
	if(head_picture != 0)
	{
		draw_set_colour(c_white);
		for(var i  = 0;i < 3;i++)
			draw_roundrect(x + i,y - 100 + i,x + 100 - i,y - i,1);
		draw_set_colour(c_black);
		draw_roundrect(x + 5,y - 95,x + 95,y - 5,0);
		draw_sprite(head_picture,0,(x+x+100)/2,(y - 100 + y) / 2);
	}
	
}else{
	x1 = -100;
	y1 = -100;
}

