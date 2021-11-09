/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//time delta (refined Delta Time)
global.time_delta = delta_time * room_speed * 0.000001;

#region camera shake
if (global.cam_shake > 0) {
	global.cam_shake -= global.time_delta;
	if (global.cam_shake <= 0) {
		global.cam_shake = 0;
		camera_set_view_pos(view_camera[0],0,0);
	}
}
#endregion

#region change color
if (keyboard_check_pressed(ord("Q"))) {
	c_selected++;
	if (c_selected >= array_length(c_list)) {
		c_selected = 0;
	}
	global.color = c_list[c_selected];
	if (room = room_game) {
		#region set color
		with (obj_control) {
			part_type_color_mix(prtScene,global.color,global.color);
		}
		with(obj_player) {
			image_blend = global.color;
			part_type_color_mix(prtLaser,global.color,global.color);
			part_type_color_mix(prtMove,global.color,global.color);
		}
		with (obj_rocas) {
			image_blend = global.color;
		}
		with(obj_objects) {
			part_type_color_mix(prtDeath,global.color,global.color);
			image_blend = global.color;
		}
		#endregion
	} else if (room = room_tutorial) {
		with(obj_player_tutorial) {
			image_blend = global.color;
			part_type_color_mix(prtLaser,global.color,global.color);
			part_type_color_mix(prtMove,global.color,global.color);
		}
	}
	ini_open("game.ini");
	ini_write_real("game","color",c_selected);
	ini_close();
}
#endregion

#region save data

if (save) {
	var points_calc = string(round(obj_control.points));
	while (string_length(points_calc) < 5) {
		points_calc = "0" + points_calc;
	}
	
	var hi_calc = real(string_copy(global.hi,4,8));
	
	if (round(obj_control.points) > hi_calc) {
		global.hi = "HI:" + points_calc;
		ini_open("game.ini");
		ini_write_string("game","hi",global.hi);
		ini_close();
	}
	save = false;
}

#endregion
