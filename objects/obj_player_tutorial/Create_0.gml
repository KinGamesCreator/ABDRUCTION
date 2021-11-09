/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region player particles

psLaser = part_system_create_layer("particles",false);
prtLaser = part_type_create();
part_type_direction(prtLaser,15,165,0,0);
part_type_gravity(prtLaser,0.1,270);
part_type_speed(prtLaser,2,3,0,0);
part_type_scale(prtLaser,2,2);
part_type_life(prtLaser,20,25);
part_type_color_mix(prtLaser,global.color,global.color);
peLaser = part_emitter_create(psLaser);
part_emitter_region(psLaser,peLaser,x - 5,x + 5,104,104,ps_shape_rectangle,ps_distr_linear);

psMove = part_system_create_layer("Instances",false);//("instances",false);
part_system_depth(psMove,depth+1);
prtMove = part_type_create();
part_type_direction(prtMove,160,200,0,0);
part_type_gravity(prtMove,0,270);
part_type_speed(prtMove,1,1,0,0);
part_type_scale(prtMove,1,1);
part_type_life(prtMove,7,10);
part_type_color_mix(prtMove,global.color,global.color);
peMove = part_emitter_create(psMove);
part_emitter_region(psMove,peMove,x-4,x-4,y-2,y+4,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_stream(psMove,peMove,prtMove,3);

#endregion

laser_duration = 0;
image_blend = global.color;
rdirection = 0; //real direction
veloc = 3; //speed
channel = animcurve_get_channel(anc_ufo,0);
animation = 0;

laser = 0; //laser state
image_laser = 0;
v_speed_special = 0; //special speed (laser)
