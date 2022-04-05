/// @description Input your code.
function change_colour(c)
{
	switch(c)
	{
		case ("c_red"): {text_colour = c_red;break;}
		case ("c_white"): {text_colour = c_white;break;}
	}
}
//need change
text = "This :1is a $test {c_red}text";
text_wait = 5;
text_x_space = 15;
text_y_space = 20;
text_start_x = x;
text_start_y = y;
text_now_x = text_start_x;
text_now_y = text_start_y;
text_font = Font1;
text_colour = c_white;
text_shake = 0;
text_cur[0] = 0;
can_skip = true;
text_sound = snd_talk;


//no change
now_char_num = 0;
now_char = 0;
next_char_num = 0;
next_char = 0;
line_char_num = 0;

timer = 0;



function creat(char,colour,font,shake)
{
	text_cur[now_char_num] = instance_create_depth(text_now_x,text_now_y,-100,printer_show_text);
	text_cur[now_char_num].char = char;
	text_cur[now_char_num].draw_colour = text_colour;
	text_cur[now_char_num].font = font;
	text_cur[now_char_num].shake = shake;
	text_now_x += text_x_space;
	if(char != " ")
	{
		audio_stop_sound(text_sound);
		audio_play_sound(text_sound,10,0);
	}
}



function enter()
{
	if(next_char == "$")
	{
		text = string_delete(text,next_char_num + 1,1);
		text_now_y += text_y_space;
		line_char_num = -1;
	}
}



function color()
{
	if(next_char == "{")
	{
		var pos_right = string_pos_ext("}",text,next_char_num+1);
		var colour = string_copy(text,next_char_num+2,pos_right - next_char_num - 2);
		text = string_delete(text,next_char_num,pos_right - next_char_num+1);
		text = string_insert(" ",text,next_char_num);
		change_colour(colour);
	}
}


function shake_change()
{
	if(next_char == ":")
	{
		text_shake = real(string_char_at(text,next_char_num+2));
		text = string_delete(text,next_char_num+1,2);
	}
}