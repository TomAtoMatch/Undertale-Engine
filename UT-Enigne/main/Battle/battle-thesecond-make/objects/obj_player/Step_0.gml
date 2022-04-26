/// @description Input your code.
switch(nowRound){
	case(0):{
		if(keyboard_check_released(Z) && checkInNumber <= 0)
		{
			isCheckItem = true;
			checkInNumber = 0;
		}
		if(isCheckItem == false)
		{
			switch(buttonCheck){
				case(0):{ //fight
					x = lerp(obj_btn_fight.x - 39,x,0.5);
					y = lerp(obj_btn_fight.y,y,0.5);
					break;
				}
				case(1):{ //act
					x = lerp(obj_btn_act.x - 39,x,0.5);
					y = lerp(obj_btn_act.y,y,0.5);
					break;
				}
				case(2):{ //item
					x = lerp(obj_btn_item.x - 39,x,0.5);
					y = lerp(obj_btn_item.y,y,0.5);
					break;
				}
				case(3):{ //fight
					x = lerp(obj_btn_mercy.x - 39,x,0.5);
					y = lerp(obj_btn_mercy.y,y,0.5);
					break;
				}
			}
			if(keyboard_check_pressed(right)){
				buttonCheck += 1;
				if(buttonCheck > 3){
					buttonCheck = 0;
				}
			}
			if(keyboard_check_pressed(left)){
				buttonCheck -= 1;
				if(buttonCheck < 0){
					buttonCheck = 3;
				}
			}
		}
		else{
			x = lerp(80,x,0.5);
			y = lerp(320,y,0.5);
			if(keyboard_check_pressed(Z)){
				if(checkInNumber < maxListNumber){
					ds_list_add(theLastChoose,itemCheck);
					checkInNumber++;
					itemCheck = 0;
				}else{
					nowRound = SHOW;
					isCheckItem = false;
					checkInNumber = -1;
					scr_do();
				}
			}
			
			if(keyboard_check_pressed(down)){
				itemCheck += 1;
				if(itemCheck > itemMaxCheck){
					itemCheck = 0;
				}
			}
			if(keyboard_check_pressed(up)){
				itemCheck -= 1;
				if(itemCheck < 0){
					itemCheck = itemMaxCheck;
				}
			}		
			if(keyboard_check_pressed(X)){
				checkInNumber -= 1;
				if(checkInNumber < 0){
					isCheckItem = false;
					itemCheck = 0;
				}
			}
		}
		break;
	}
}




if(keyboard_check_pressed(vk_f1))
{
	game_restart();
}
