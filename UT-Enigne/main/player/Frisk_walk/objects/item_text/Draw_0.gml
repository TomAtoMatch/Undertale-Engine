/// @description Input your code.
draw_set_alpha(image_alpha);
draw_self();
draw_set_font(fnt_info);
draw_text(x + 10,y + 10,player_name+"\nLV"+string(lv)+" EXP"+string(exp_point));

if(is_check == true)
{
	image_alpha = 1;
}else{
	image_alpha = 0;
}


x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);