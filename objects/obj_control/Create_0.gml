/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

two_players = false;

#region scene particles

psScene = part_system_create_layer("Instances",false);//("instances",false);
part_system_depth(psScene,210);
prtScene = part_type_create();
part_type_direction(prtScene,180,180,0,0);
part_type_gravity(prtScene,0,0);
part_type_speed(prtScene,2,3,0,0);
part_type_scale(prtScene,5,5);
part_type_alpha1(prtScene,0.1);
part_type_color_mix(prtScene,global.color,global.color);
peScene = part_emitter_create(psScene);
part_emitter_region(psScene,peScene,200,200,0,108,ps_shape_line,ps_distr_linear);
part_emitter_stream(psScene,peScene,prtScene,1);

#endregion

#region generation

spawn_speed = 1;
generacion = [420,0,0,0,0];
limit = [480,360,400,160,320];
object = [obj_tank,obj_heli,obj_misil,obj_rocas,obj_internet];

#endregion

//variables
points = 0;
global.speed_game = 1.5;
pos_floor_animation = 0;
signals = [3,3];
players = [player1,noone];
pause_anim = 0;

//music
if (!audio_is_playing(global.music)) {
	global.music = audio_play_sound(snd_music_loop,1,1);
}
