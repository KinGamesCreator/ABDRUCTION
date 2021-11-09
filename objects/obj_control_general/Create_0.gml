/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

global.time_delta = 1; //refined Delta-Time
global.cam_shake = 0; //Camera shake :/
global.pause = false;

#region load data

save = false;

global.points_font = font_add_sprite_ext(spr_font, "0123456789HI:PONTS ACEQ=LR[]", false, 2); //points font

ini_open("game.ini");
global.hi = ini_read_string("game","hi","HI:00000");
c_selected = ini_read_real("game","color",0);
ini_close();

#endregion

#region resize
vent_height = browser_height;
vent_width = browser_height * (16/9);
display_set_gui_size(vent_width,vent_height);
surface_resize(application_surface,vent_width,vent_height);
window_set_size(vent_width,vent_height);
#endregion

#region control color

c_list = [
c_white,
$d8d804,
$4a1bf3,
$ef70a1,
$7171f6,
$74fcc4,
$8c72f2,
$0cebf3,
$41d52b,
$0495f2,
$6bafd4
];

global.color = c_list[c_selected];

#endregion

#region input

global.input = [
ord("W"),
ord("S"),
ord("G"),
ord("H"),
vk_up,
vk_down,
vk_numpad1,
vk_numpad2
];

#endregion
