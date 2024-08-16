// @diest64 transitions
var i, k, spriteFrameCount = sprite_get_number(spr_Transition), spriteWidth = sprite_get_width(spr_Transition), spriteHeight = sprite_get_height(spr_Transition);

if (transition) {
	if (transitionSubImg < spriteFrameCount + (room_width/spriteWidth))	{	
		transitionSubImg += transitionSpeed;
	} else {
		room_goto(ToRoom)
		transition = false;
	}
} else {
	transitionSubImg -= transitionSpeed;
	if (transitionSubImg < 0) {
		instance_destroy(objTransition);
	}
}

for(i=0; i<room_width div spriteWidth+1; i++) {
	for(k=0; k<room_height div spriteHeight+1; k++) {
		var spriteSubImg = transitionSubImg-i;
		if (spriteSubImg < 0) spriteSubImg = 0;
		else if (spriteSubImg > spriteFrameCount-1) spriteSubImg = spriteFrameCount-1;
		draw_sprite(spr_Transition, spriteSubImg, i*128, k*128);
	}
}