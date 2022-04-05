/// @description Input your code.
timer++;
if(shake > 0)
{
	x = mid_x + sin(timer / irandom(10)) * shake;
	y = mid_y + cos(timer / irandom(10)) * shake;
}else{
	x = mid_x;
	y = mid_y;
}
draw_set_colour(draw_colour);
draw_set_font(font);
draw_text(x,y,char);