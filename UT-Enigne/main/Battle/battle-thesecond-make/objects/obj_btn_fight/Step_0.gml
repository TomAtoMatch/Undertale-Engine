/// @description Input your code.
if(nowRound == ACT)
{
	if(buttonCheck == 0)
	{
		image_alpha = lerp(image_alpha,1,0.05);
		image_index = 1;
	}else{
		image_alpha = lerp(image_alpha,0,0.05);
		image_index = 0;
	}
}else{
	image_alpha = lerp(image_alpha,0,0.05);
	image_index = 0;
}
