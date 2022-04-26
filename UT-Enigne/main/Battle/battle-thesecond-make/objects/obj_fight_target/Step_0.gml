/// @description Input your code.
timer++;
image_alpha = lerp(image_alpha,1,0.01);
image_xscale = image_alpha;
image_yscale = image_alpha;
if(timer >= 150){
	if(alarm_get(0) <= 0){
		alarm[0] = 60;
	}
}
if(nowRound == BATTLE){
	instance_destroy();
	global.num = 0;
}

