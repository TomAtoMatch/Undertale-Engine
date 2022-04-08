/// @description Input your code.
if(keyboard_check_pressed(ord("Z"))&& can_move == true)
{
	can_move = false;
	info_text.image_alpha = 1;
	for(var i = 0;i < ds_list_size(text);i++)
		ds_list_add(info_text.need_print_text,ds_list_find_value(text,i));
}