///d3d_draw_sprite(spr, index, x, y, z, xscale, yscale, xr, yr, zr, alpha)
var _spr = argument0;
var _index = argument1;
var _x = argument2;
var _y = argument3;
var _z = argument4;
var _xs = argument5;
var _ys = argument6;
var _xr = argument7;
var _yr = argument8;
var _zr = argument9;
var _alp = argument10;

var _x0 = - sprite_get_xoffset(_spr);
var _y0 = - sprite_get_yoffset(_spr);
var _x1 = sprite_get_width(_spr) - sprite_get_xoffset(_spr);
var _y1 = sprite_get_height(_spr) - sprite_get_yoffset(_spr);
var _tex = sprite_get_texture(_spr, _index);

var tex = sprite_get_uvs(_spr, _index);

d3d_transform_set_identity();
d3d_transform_add_rotation_y(_yr);
d3d_transform_add_rotation_x(_xr);
d3d_transform_add_rotation_z(_zr);
d3d_transform_add_scaling(_xs, _ys, 1);
d3d_transform_add_translation(_x, _y, _z);


/***************************************************
  d3d_primitive_begin_texture(pr_trianglestrip, _tex);
d3d_vertex_texture(_x0, _y0, _z, 0, 0);
d3d_vertex_texture(_x1, _y0, _z, 1, 0);
d3d_vertex_texture(_x0, _y1, _z, 0, 1);
d3d_vertex_texture(_x1, _y1, _z, 1, 1);
d3d_primitive_end();
 ***************************************************/
draw_set_alpha(_alp);
d3d_draw_floor(_x0, _y0, _z, _x1, _y1, _z, _tex, 1, 1);
draw_set_alpha(1);
d3d_transform_set_identity();

