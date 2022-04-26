// gamemakerSudio2.3.0的脚本资产已更改，请参见// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_do(){
	switch(buttonCheck){
		case(0):{ //fight
			var t = instance_create_depth(320,320,-100,obj_fight_target);
			if(itemCheck == 0){//one fight
				t.insNum = 1;
			}else{
				t.insNum = 2;		
			}
			break;
		}
		case(1):{//act
			switch(theLastChoose){
				case(0):{//sans
					switch(itemCheck){
						case(0):{
							print("Sans$ATK 1 DEF 1$The easiest enemy.",80,280);
							break;
						}
					}
					break;
				}
			}
		}
	}
	itemCheck = 0;
}