gpu_set_tex_repeat(true);

draw_primitive_begin_texture(pr_trianglelist, sprite_get_texture(spr_checker, 0));

var xtex = (mouse_x - x) / sprite_get_width(spr_checker);
var ytex = (mouse_y - y) / sprite_get_height(spr_checker);

draw_vertex_texture(x, y, 0, 0);
draw_vertex_texture(mouse_x, y, xtex, 0);
draw_vertex_texture(mouse_x, mouse_y, xtex, ytex);

draw_vertex_texture(mouse_x, mouse_y, xtex, ytex);
draw_vertex_texture(x, mouse_y, 0, ytex);
draw_vertex_texture(x, y, 0, 0);

draw_primitive_end();