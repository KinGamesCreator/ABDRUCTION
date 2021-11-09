/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();

while(instance_place(x,y,obj_tank)) {
	x += 1;
}

if (state = 0) {
	
	image_angle = 0;
	
	if (y < 93) {
		y += global.time_delta;
		if (y > 93) {
			y = 93;
		}
	}
	
	x -= global.time_delta * global.speed_game;
	
	if (x < -20) {
		instance_destroy();
	}
	
}
