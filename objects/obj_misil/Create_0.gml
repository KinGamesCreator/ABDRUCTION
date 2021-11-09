/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();

prtDeath = part_type_create();
part_type_direction(prtDeath,0,360,0,0);
part_type_gravity(prtDeath,0.1,270);
part_type_speed(prtDeath,2,2.5,0,0);
part_type_scale(prtDeath,5,5);
part_type_life(prtDeath,30,35);
part_type_alpha2(prtDeath,1,0);
part_type_color_mix(prtDeath,global.color,global.color);

bad = true;

x = 200;
y = 9 + irandom(77);

image_index = 0;

direction = 90;
direction_var = 0.5;
