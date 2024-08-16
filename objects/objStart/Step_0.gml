if (mouse_check_button_pressed(mb_any) || device_mouse_check_button_pressed(0, mb_any) || keyboard_check_pressed(vk_anykey))
{
	audio_play_sound(TacoBell_Bong, 0, false);
    room_goto(rmIntro);
}