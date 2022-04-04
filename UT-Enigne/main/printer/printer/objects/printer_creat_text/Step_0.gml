/// @description Input your code.

text_max_num = string_length(text);
next_char_num = now_char_num + 1;
now_char = string_char_at(text,now_char_num);
next_char = string_char_at(text,next_char_num);
if(now_char_num < text_max_num)
{
	timer++;
	if(timer == text_wait)
	{
		timer = 0;
		now_char_num++;
		//creat text
	}
}