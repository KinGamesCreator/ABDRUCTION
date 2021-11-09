/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();
bad = true;
speed = global.speed_game * 1.5 * global.time_delta;

if (state = 0) {
	image_angle = direction - 180;
}

if (x < -20) {
	instance_destroy();
}

