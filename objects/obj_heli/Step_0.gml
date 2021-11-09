/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();

if (state = 0) {
	image_angle = 0;
	if (image_alpha < 1) {
		image_alpha += 0.02 * global.time_delta;
		if (image_alpha >= 1) {
			image_alpha = 1;
			image_index = 2;
		}
		image_yscale = 0.75 + 0.25 * image_alpha;
		image_xscale = image_yscale;
	} else {
		x -= global.time_delta * global.speed_game * 1.2;
		if (x < -sprite_width) {
			instance_destroy();
		}
	}
}
