/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_sprite_ext(spr_buttons,key_down,0,-6,1,1,0,global.color,1);
draw_sprite_ext(spr_suelo,0,-anim_floor,102,32,1,0,global.color,1);

if (skip) {
//draw_set_font(global.points_font);

draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_alpha(1);
draw_set_color(global.color);
draw_text(1,1,"[SPACE]");
}