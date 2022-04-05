/// @description Input your code.
if(keyboard_check_pressed(ord("Z"))&& can_move == true)
{
	can_move = false;
	info_text.image_alpha = 1;
	info_text.x1 = 0;
	info_text.y1 = 0;
		
	ds_list_copy(info_text.need_print_text,text);
}