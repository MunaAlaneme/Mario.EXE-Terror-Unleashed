// @diest64 transitions
var i, k, spriteFrameCount = sprite_get_number(spr_Transition), spriteWidth = sprite_get_width(spr_Transition), spriteHeight = sprite_get_height(spr_Transition);

transitionSubImg -= (transitionSpeed*120*delta_time/1000000);;
if (transitionSubImg < ((-2-room_width)/192)) {
	instance_destroy(objTransitionEnd);
}

for(i=0; i<room_width div spriteWidth+1; i++) {
	for(k=0; k<room_height div spriteHeight+1; k++) {
		var spriteSubImg = transitionSubImg+i;
		if (spriteSubImg < 0) spriteSubImg = 0;
		else if (spriteSubImg > spriteFrameCount-1) spriteSubImg = spriteFrameCount-1;
		draw_sprite(spr_Transition, spriteSubImg, i*128, k*128);
	}
}