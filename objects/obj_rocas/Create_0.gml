/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if x = 0 {
	x = 192;
	y = 95;
	var creation = irandom(5);
	if (creation <= 2) {
		instance_create_depth(x + 12 * creation,y,depth,obj_rocas);
	}
}

image_blend = global.color;
image_alpha = 0.3;
image_index = irandom(image_number-1);
depth = 220;
