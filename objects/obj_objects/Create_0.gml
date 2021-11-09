/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

image_blend = global.color;
state = 0;
bad = false;

psDeath = part_system_create_layer("particles",true);
prtDeath = part_type_create();
part_type_direction(prtDeath,40,170,0,0);
part_type_gravity(prtDeath,0.1,270);
part_type_speed(prtDeath,1,1.5,0,0);
part_type_scale(prtDeath,2,3);
part_type_life(prtDeath,30,35);
part_type_color_mix(prtDeath,global.color,global.color);
peDeath = part_emitter_create(psDeath);
part_emitter_region(psDeath,peDeath,x-2,x+2,y,y-1,ps_shape_ellipse,ps_distr_invgaussian);
