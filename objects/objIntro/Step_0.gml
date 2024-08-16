if (intro_timer>0){
	intro_timer-=delta_time/1000000;
}
if (intro_timer<0){
	instance_create_depth(0,0,100,objTransitionStart);
	objTransitionStart.ToRoom = rmTitleScreen;
	instance_destroy();
}