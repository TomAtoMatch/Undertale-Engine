/// @description Input your code.
draw_set_halign(fa_center);
draw_self();
draw_set_halign(fa_left);
x = lerp(x,mid_x + sin(startTimer / 20),0.5);
y = lerp(y,mid_y + cos(startTimer / 20),0.5);
if(instance_exists(obj_knife_fight)){
	if(obj_knife_fight.x < x + sprite_width / 2 && obj_knife_fight.x > x - sprite_width / 2){
		if(irandom(1) == 0){
			mid_x += 50;
		}else{
			mid_x -= 50;
		}
	}
}else{
	mid_x = 320;
}
