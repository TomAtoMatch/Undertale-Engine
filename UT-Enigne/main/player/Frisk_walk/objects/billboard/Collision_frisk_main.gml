/// @description Input your code.
if(keyboard_check_pressed(ord("Z"))&& can_move == true)
{
	can_move = false;
	info_text.image_alpha = 1;
	for(var i = 0;i < ds_list_size(text);i++)
		ds_list_add(info_text.need_print_text,ds_list_find_value(text,i));
	for(var i = 0;i < ds_list_size(head);i++)
		ds_list_add(info_text.need_print_head,ds_list_find_value(head,i));
	for(var i = 0;i < ds_list_size(sound);i++)
		ds_list_add(info_text.need_print_sound,ds_list_find_value(sound,i));
	for(var i = 0;i < ds_list_size(font);i++)
		ds_list_add(info_text.need_print_font,ds_list_find_value(font,i));
}