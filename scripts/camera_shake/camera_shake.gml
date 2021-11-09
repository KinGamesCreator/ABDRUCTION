// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function camera_shake(intensity){ //shake camera :/
	global.cam_shake = 5;
	randomize();
	camera_set_view_pos(view_camera[0],choose(intensity,-intensity),choose(intensity,-intensity));
}