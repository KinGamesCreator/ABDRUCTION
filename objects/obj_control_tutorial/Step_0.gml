/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
time += global.time_delta;

key_pressed = 0;

anim_floor += global.time_delta;
if (anim_floor > 12) {
	anim_floor -= 12;
}

switch (step) {
	
	case 0:
	if (!action) {
		action = true;
		key_pressed = 1;
		key_down = 1;
	}
	if (time > 20) {
		step++;
		action = false;
	}
	break;
	case 1:
	if (!action) {
		action = true;
		key_pressed = 2;
		key_down = 2;
	}
	if (time > 60) {
		step++;
		action = false;
	}
	break;
	case 2:
	if (!action) {
		action = true;
		key_pressed = 1;
		key_down = 1;
	}
	if (time > 90) {
		step++;
		action = false;
	}
	break;
	case 3:
	if (!action) {
		action = true;
		key_pressed = 3;
		key_down = 3;
	}
	if (time > 110) {
		step++;
		action = false;
	}
	break;
	case 4:
	if (!action) {
		action = true;
		key_pressed = 4;
		key_down = 4;
	}
	if (time > 170) {
		step = 0;
		time = 0;
		obj_player_tutorial.y = y_inic;
		action = false;
	}
	break;
	
}

if (skip) and keyboard_check_pressed(vk_space) {
	room_goto(room_intro);
}
