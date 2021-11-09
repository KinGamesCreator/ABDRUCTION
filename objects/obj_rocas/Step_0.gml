/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

x -= global.speed_game / 2 * global.time_delta;

if x < -20 {
	instance_destroy();
}
