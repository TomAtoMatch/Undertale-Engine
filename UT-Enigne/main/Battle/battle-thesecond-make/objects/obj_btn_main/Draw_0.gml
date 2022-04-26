/// @description Input your code.
draw_self();
if(nowRound == ACT){
	if(isCheckItem && buttonCheck == t){
		checkNumber[0] = ds_list_size(list[0]) - 1;
		checkNumber[1] = ds_list_size(list[1]) - 1;
		now_y = lerp(now_y,start_y,0.2);
		itemMaxCheck = checkNumber[checkInNumber];
		maxListNumber = 1;
		switch(checkInNumber){
			case (0):{
				for(var i = 0;i < ds_list_size(list[checkInNumber]);i++){
					start_y = 312 - itemCheck * 20;
					draw_text(100,now_y + i * 20,ds_list_find_value(list[checkInNumber],i));
				}
				break;
			}
			case (1):{
				for(var i = 0;i < ds_list_size(list[checkInNumber]);i++){
					start_y = 312 - itemCheck * 20;
					draw_text(100,now_y + i * 20,ds_list_find_value(list[checkInNumber],i));
				}
				break;
			}
		}
	}
}
