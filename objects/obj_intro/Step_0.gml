/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_blend = global.color;
if intro_music = noone {
	intro_music = audio_play_sound(snd_music_intro,1,0);
}

if (cam_shake > 0) {
	cam_shake -= 1;
	if (cam_shake <= 0) {
		cam_shake = 0;
		camera_set_view_pos(view_camera[0],0,0);
	}
}

switch (image_index) {
	
	case 0:
	if (audio_sound_get_track_position(intro_music)>= 5) {
		image_index++;
		cam_shake = 5;
		randomize();
		camera_set_view_pos(view_camera[0],choose(0.5,-0.5),choose(0.5,-0.5));
	}
	break;
	
	case 1:
	if (audio_sound_get_track_position(intro_music)>= 10) {
		image_index++;
		cam_shake = 5;
		randomize();
		camera_set_view_pos(view_camera[0],choose(0.5,-0.5),choose(0.5,-0.5));
	}
	break;
	
	case 2:
	if (audio_sound_get_track_position(intro_music)>= 15) {
		image_index++;
		cam_shake = 5;
		randomize();
		camera_set_view_pos(view_camera[0],choose(0.5,-0.5),choose(0.5,-0.5));
	}
	break;
	case 3:
	if !audio_is_playing(intro_music) {
		global.music = audio_play_sound(snd_music_loop,1,1);
		room_goto(room_game);
	}
	break;
	
}

if (keyboard_check_pressed(vk_enter)) {
	audio_stop_sound(intro_music);
	global.music = audio_play_sound(snd_music_loop,1,1);
	room_goto(room_game);
}
