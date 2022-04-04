/// @description Input your code.
//need change
text = "This is a test text";
text_wait = 5;
text_x_space = 20;
text_y_space = 20;
text_start_x = 10;
text_start_y = 10;
text_font = Font1;
text_colour = c_white;
text_shake = 0;
text_cur[0] = 0;


//no change
now_char_num = 0;
now_char = 0;
next_char_num = 0;
next_char = 0;


timer = 0;



function creat(char,colour,font,shake)
{
	text_cur[now_char_num] = instance_create_depth();
}