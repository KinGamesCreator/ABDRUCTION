/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

event_inherited();

prtDeath = part_type_create();
part_type_direction(prtDeath,0,360,0,0);
part_type_gravity(prtDeath,0.1,270);
part_type_speed(prtDeath,2,2.5,0,0);
part_type_scale(prtDeath,4,4);
part_type_life(prtDeath,25,30);
part_type_color_mix(prtDeath,global.color,global.color);

bad = false;
x = 192;
y = 93;
image_index = 0;
