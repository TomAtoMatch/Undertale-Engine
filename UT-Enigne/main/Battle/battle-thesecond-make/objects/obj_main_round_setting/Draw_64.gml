/// @description Input your code.
startTimer++;
switch (nowRound)
{
	case (0):{
		r = "行动";
		break;
	}
	case (1):{
		r = "展示";
		break;
	}
	case (2):{
		r = "攻击";
		break;
	}
	case (3):{
		r = "讲话";
		break;
	}
}
draw_set_font(fnt_wall_info);
draw_text_colour(10,10,"当前回合: " + r +"\n回合数目: " 
				+ string(roundNumber) +"\n当前按钮选择: " 
				+ string(buttonCheck) +"\n是否选择菜单: " 
				+ string(isCheckItem) +"\n当前菜单选择: " 
				+ string(itemCheck) +"\n当前时间: " 
				+ string(startTimer) +"\n嵌套数量: "
				+ string(checkInNumber) +"\n菜单最大数: "
				+ string(itemMaxCheck) + "\n实例数量: "
				+ string(instance_count) + "\n上次选择: "
				+ string(theLastChoose) + "\n"
				,make_colour_hsv(startTimer mod 255,255,255),
				make_colour_hsv((startTimer + 50) mod 255,255,255),
				make_colour_hsv((startTimer + 100) mod 255,255,255),
				make_colour_hsv((startTimer + 150) mod 255,255,255),
				1);
