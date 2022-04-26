/// @description Input your code.
if(insNum > 0){
	if(irandom(1) == 0){
		var line = instance_create_depth(40,320,-110,obj_fight_line);
		line.speed = 0.1;
		line.direction = 0;
	}else{
		var line = instance_create_depth(600,320 ,-110,obj_fight_line);
		line.speed = 0.1;
		line.direction = 180;
	}
	line.theNum = num;
	line_c[insNum - 1] = line;
	insNum--;
	num += 1;
}
