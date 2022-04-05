/// @description Input your code.

enter();
color();
shake_change();

text_max_num = string_length(text);
next_char_num = now_char_num + 1;
now_char = string_char_at(text,now_char_num+1);
next_char = string_char_at(text,next_char_num+1);
text_now_x = text_start_x + text_x_sapce * line_char_num;
if(now_char_num < text_max_num)
{
	timer++;
	if(timer == text_wait)
	{
		creat(now_char,text_colour,text_font,text_shake);
		show_debug_message("now_char: "+string(now_char)+"\nnow_char_num:"+string(now_char_num));
		timer = 0;
		now_char_num++;
		line_char_num++;
	}
	if(keyboard_check_pressed(ord("X")) && can_skip == true)
	{
		for(var i = now_char_num;i<text_max_num;i++)
		{
			creat(now_char,text_colour,text_font,text_shake);
			now_char_num++;
			enter();
			color();
			shake_change();

			text_max_num = string_length(text);
			next_char_num = now_char_num + 1;
			now_char = string_char_at(text,now_char_num+1);
			next_char = string_char_at(text,next_char_num+1);
		}
	}
}else
{
	if(keyboard_check_pressed(ord("Z")))
	{
		for(var i = 0;i < text_max_num;i++)
		{
			instance_destroy(text_cur[i]);
		}
		instance_destroy();
	}
}

