/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//draw floor
draw_sprite_ext(spr_suelo,0,pos_floor_animation,102,33,1,0,global.color,1);

#region draw points
draw_set_color(global.color);
draw_set_font(global.points_font);
draw_set_valign(fa_top);
draw_set_halign(fa_right);
var points_draw = string(round(points));
while (string_length(points_draw) < 5) {
	points_draw = "0" + points_draw;
}
points_draw = global.hi + " " + points_draw;

draw_text(191,1,points_draw);
#endregion

#region energia

for (var i = 0; i < 2; i++) {
	if (signals[i] > 3) {
		signals[i] --;
	}
}

if (instance_exists(players[0])) {
	draw_sprite_ext(spr_signal,signals[0],1,1,1,1,0,global.color,1);
} else {
	draw_sprite_ext(spr_signal,0,1,1,1,1,0,global.color,0.5);
}
if (two_players) {
	if (instance_exists(players[1])) {
		draw_sprite_ext(spr_signal,signals[1],14,1,1,1,0,global.color,1);
	} else {
		draw_sprite_ext(spr_signal,0,14,1,1,1,0,global.color,0.5);
	}
}

#endregion

if (global.pause) {
	draw_set_color(c_black)
	draw_set_alpha(0.2);
	draw_rectangle(0,0,192,108,0);
	draw_sprite_ext(spr_retry,floor(pause_anim),96,54,1,1,0,global.color,1);
	draw_set_alpha(1);
	draw_sprite_ext(spr_buttons,0,0,-6,1,1,0,global.color,0.5);
}
