/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

image_blend = global.color;

if (image_alpha = 1) {
	if keyboard_check_pressed(vk_space) {
		image_alpha -= 0.1 * global.time_delta;
	}
} else if (image_alpha > 0) {
	image_alpha -= 0.1 * global.time_delta;
	if (image_alpha <= 0) {
		image_alpha = 0;
	}
}

if (image_alpha = 1) {
	if (layer_sequence_get_headpos(seq) >= 40) {
		layer_sequence_headpos(seq,0);
	}
} else {
	if (layer_sequence_is_finished(seq)) {
		room_goto(room_tutorial);
	}
}
