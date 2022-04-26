max_num = string_length(text);
now_char = string_copy(text,0,1);
next_char = string_copy(text,1,1);
if(max_num > 0)
{
	if(keyboard_check_pressed(ord("X")))
	{
		text_wait = 0;
	}
	timer++;
	if(timer >= text_wait)
	{
		timer = 0;
		now_num += 1;
		
		if(next_char == "$")
		{
			text = string_delete(text,string_pos("$",text),1);
			now_x = text_start_x;
			now_y += text_y_space;
			
		}else if(next_char == ":")
		{
			text_shake = real(string_copy(text,string_pos(":",text)+1,1));
			text = string_delete(text,1,2);
		}else{
			max_num = string_length(text);
			now_char = string_copy(text,0,1);
			next_char = string_copy(text,1,1);
			if(next_char != " ")&&(text_wait != 0)
			{
				audio_stop_sound(text_sound);
				audio_play_sound(text_sound,10,0);
			}
			text_current[now_num] = instance_create_depth(now_x,now_y,-100,printer_show_text);
			text_current[now_num].char = now_char;
			text_current[now_num].draw_colour = text_colour;
			text_current[now_num].font = text_font;
			text_current[now_num].shake = text_shake;
			text = string_delete(text,1,1);
			now_x += text_x_space;
		}
		
		
	}
}
else{
	if(keyboard_check_pressed(ord("Z")))
	{
		instance_destroy();
		instance_destroy(printer_show_text);
		if(nowRound == SHOW){
			nowRound = BATTLE;
		}
	}
}