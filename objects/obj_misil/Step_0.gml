/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();

speed = global.speed_game * 1.5 * global.time_delta;

if (state = 0) {
	
	direction += direction_var * global.time_delta * global.speed_game;
	if direction > 190 {
		direction = 190;
		direction_var = -0.5;
	} else if direction < 170 {
		direction = 170;
		direction_var = 0.5;
	}
	image_angle = direction - 180;
	
}

if (x < -20) {
	instance_destroy();
}
