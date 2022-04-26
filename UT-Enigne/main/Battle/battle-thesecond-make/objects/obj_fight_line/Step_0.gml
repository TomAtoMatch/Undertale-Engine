/// @description Input your code.
if(keyboard_check_pressed(Z)) && theNum = global.num{
	speed /= 16;
	instance_create_depth(sans.x,sans.y,-110,obj_knife_fight);
	direction = random(720);
	global.num += 1;
	click = true;
}
if(click == false){
	if(x > room_width || x < 0 ){
		instance_destroy();
	}
}else{
	image_alpha -= 0.01;
}
speed += 0.05;
if(x > room_width || x < 0 || y > room_height || y < 0)&& (click == true){
	instance_destroy();
	nowRound = BATTLE;
}
