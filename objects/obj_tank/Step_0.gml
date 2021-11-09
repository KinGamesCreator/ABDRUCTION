/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();

if (state = 0) {
	
	if (image_index = 0) {
		if (x < 180) and (!bullet) {
			bullet = true;
			with (instance_create_depth(x,y,depth,obj_bullet)) {
				direction = irandom_range(145,160);
			}
		}
	} else {
		if collision_line(x+5,y,x+5,0,obj_player,1,0) and (!bullet) {
			bullet = true;
			with (instance_create_depth(x,y,depth,obj_bullet)) {
				direction = 90;
			}
		}
	}
	
	image_angle = 0;
	
	if (y < 94) {
		y += global.time_delta * 2;
		if (y > 94) {
			y = 94;
		}
	}
	
	x -= global.time_delta * (global.speed_game + 0.2 * image_index);
	if (x < -20) {
		
	}
	
}
