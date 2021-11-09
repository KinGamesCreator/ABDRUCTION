/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self();

draw_set_font(global.points_font);

draw_set_valign(fa_middle);
draw_set_halign(fa_center);

draw_set_color(global.color);
draw_set_alpha(image_alpha);
draw_text(96,54,"[SPACE]\n\n[Q = COLOR]")
draw_set_alpha(1);