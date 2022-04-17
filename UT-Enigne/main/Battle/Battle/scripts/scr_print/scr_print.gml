// gamemakerSudio2.3.0的脚本资产已更改，请参见// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_print(text,text_x,text_y,text_x_sapce = 18,text_y_space = 20,text_colour = c_white,text_shake = 0,text_font = Font1,text_sound = snd_talk,text_wait = 5)
{
	var P = instance_create_depth(text_x,text_y,-100,printer_creat_text);
	P.text = text;
	P.text_start_x = text_x;
	P.text_start_y = text_y;
	P.text_x_sapce = text_x_sapce;
	P.text_y_space = text_y_space;
	P.text_colour = text_colour;
	P.text_sound = text_sound;
	P.text_font = text_font;
	P.text_shake = text_shake;
	P.text_wait = text_wait;
}
