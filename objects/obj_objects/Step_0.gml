/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if instance_place(x,y,obj_player) /*or instance_place(x,y,player2)*/ {
	if (bad) {
		audio_play_sound(snd_explosion,1,0);
		with(instance_place(x,y,obj_player)) {
			part_emitter_stream(psMove,peMove,prtMove,0);
			instance_destroy();
		}
		camera_shake(1);
		state = 1;
		if (instance_number(obj_player) < 1) {
			audio_stop_sound(global.music);
			audio_play_sound(snd_loose,1,0);
			obj_control_general.save = true;
			global.pause = true;
		}
	} else if (state != 1) {
		with(instance_place(x,y,obj_player)) {
			obj_control.signals[player_number] += 1;
		}
		audio_play_sound(snd_point,1,0);
		state = 1;
	}
} else if instance_exists (player1) and (collision_rectangle(25,player1.y,35,102,id,1,0) and abs(player1.laser)) {
	state = player1.laser;
} else if instance_exists (obj_control.players[1]) and (collision_rectangle(49,obj_control.players[1].y,59,102,id,1,0) and abs(obj_control.players[1].laser)) {
	state = obj_control.players[1].laser;
} else if (state = -1) {
	state = 0;
}

if (state = 1) {
	part_emitter_region(psDeath,peDeath,x+2,x+15,y+5,y+16,ps_shape_ellipse,ps_distr_gaussian);
	part_emitter_burst(psDeath,peDeath,prtDeath,25);
	instance_destroy();
} else if (state = -1) {
	y -= 2 * global.time_delta;
	image_angle += 1 * global.time_delta;
	if (y < -100) {
		instance_destroy();
	}
}