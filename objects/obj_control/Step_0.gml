/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (!global.pause) {
	
	var new_player = false;
	for (var i = 0; i < 4;i++) {
		new_player = new_player or keyboard_check_pressed(global.input[4 + i]);
	}
	
	if (!two_players) and (new_player) {
		audio_play_sound(snd_player2,1,0);
		with(instance_create_depth(54,54,200,obj_player)) {
			player_number = 1;
			obj_control.players[1] = id;
		}
		two_players = true;
	}
	
	//points
	if instance_exists(obj_player) {
		points += global.time_delta * global.speed_game / 10;
	}
	
	#region generation
	for (var i = 0; i < array_length(generacion);i++) {
		generacion[i] += global.speed_game * spawn_speed;
		if (generacion[i] > limit[i]) {
			generacion[i] -= (limit[i] * 0.75 + irandom(limit[i] * 0.25));
			randomize();
			instance_create_depth(0,0,0,object[i]);
		}
	}
	#endregion
	
	#region avance difficult
	if (global.speed_game < 3) {
		global.speed_game += 0.0005 * global.time_delta;
		if (global.speed_game > 3) {
			global.speed_game = 3;
		}
	}
	if (spawn_speed < 1.5) {
		spawn_speed += (0.5 / 36000) * global.time_delta;
	}
	#endregion
	
} else {
	
	generacion[3] += global.speed_game * spawn_speed;
	if (generacion[3] > limit[3]) {
		generacion[3] -= (limit[3] * 0.75 + irandom(limit[3] * 0.25));
		randomize();
		instance_create_depth(0,0,0,object[3]);
	}
	
	if keyboard_check_pressed(vk_space) {
		global.pause = false;
		room_restart();
	}
	
	if (pause_anim < 3) {
		pause_anim+= 0.25 * global.time_delta;
		if (pause_anim > 3) {
			pause_anim = 3;
		}
	}
	
}

#region floor animation
pos_floor_animation -= global.time_delta * global.speed_game;
if abs(pos_floor_animation) > sprite_get_width(spr_suelo) {
	pos_floor_animation += sprite_get_width(spr_suelo);
}
#endregion
