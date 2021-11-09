/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

part_emitter_region(psMove,peMove,x-4,x-4,y,y,ps_shape_line,ps_distr_linear);

#region controller

#region movement

if (obj_control_tutorial.key_down = 1) or (obj_control_tutorial.key_down = 2) {
	rdirection += 10 * ((obj_control_tutorial.key_down = 1) - (obj_control_tutorial.key_down = 2)) * global.time_delta;
} else if (rdirection != 0) { //angle reset
	var sign_inic = sign(rdirection);
	rdirection += 2 * -sign(rdirection) * global.time_delta;
	if (sign_inic != sign(rdirection)) {
		rdirection = 0;
	}
}
#endregion

#region laser

laser = real(obj_control_tutorial.key_pressed = 3) - real (obj_control_tutorial.key_down = 4);

if (laser = 1) {
	laser_duration = 15;
}

if (laser_duration > 0) {
	if !global.cam_shake {
		camera_shake(0.5);
	}
	v_speed_special = 2;
	if (laser_duration = 15) {
		audio_play_sound(snd_laser,1,0);
		part_emitter_stream(psLaser,peLaser,prtLaser,3);
	}
	laser_duration -= global.time_delta;
	if (laser_duration < 0) {
		laser_duration = 0;
	}
	if (obj_control_tutorial.key_down != 3) {
		laser_duration = 0;
	}
	if audio_is_playing(snd_abduction) {
		audio_stop_sound(snd_abduction);
	}
} else {
	part_emitter_stream(psLaser,peLaser,prtLaser,0);
	if (laser = -1) {
		v_speed_special = laser / 2;
		if !audio_is_playing(snd_abduction) {
			audio_play_sound(snd_abduction,1,0);
		}
	} else {
		if audio_is_playing(snd_abduction) {
			audio_stop_sound(snd_abduction);
		}
	}
}
#endregion

#endregion

#region movement execute

if abs(rdirection) > 35 {
	rdirection = sign(rdirection) * 35;
}

y -= (sin(degtorad(rdirection)) * veloc + v_speed_special) * global.time_delta;

if (v_speed_special != 0) {
	var temp_sign = sign(v_speed_special);
	v_speed_special += (-temp_sign * global.time_delta) / 10;
	if (sign(v_speed_special) != temp_sign) {
		v_speed_special = 0;
	}
}

#endregion

#region animations

//UFO
image_angle = rdirection / 4;
animation += global.time_delta * 0.02;
if (animation > 1) {
	animation -= 1;
}
image_laser += global.time_delta;
//Laser
if (image_laser >= sprite_get_number(spr_laser)) {
	image_laser -= sprite_get_number(spr_laser);
}

#endregion

if (y > 102) {
	y = 102;
} else if (y < 3) {
	y = 3;
}

laser = real(laser_duration > 0) - real (obj_control_tutorial.key_down = 4);

