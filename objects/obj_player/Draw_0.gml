/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var variation = animcurve_channel_evaluate(channel,animation)

if (laser_duration > 0) {
	var laser_yscale = (102 - y) / 6;
	draw_sprite_ext(spr_laser,image_laser,x,102,1,-laser_yscale,0,global.color,1);
	draw_sprite_ext(sprite_index,1,x,y + variation,1,1,0,image_blend,1);
} else if (laser = -1) {
	var laser_yscale = (102 - y) / 6;
	draw_sprite_ext(spr_abduzcan,image_laser,x,102,1,-laser_yscale,0,global.color,1);
	draw_sprite_ext(sprite_index,2,x,y + variation,1,1,0,image_blend,1);
} else {
	draw_sprite_ext(sprite_index,image_index,x,y + variation,1,1,image_angle,image_blend,1);
}
