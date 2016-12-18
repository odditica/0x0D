///d3d_vector_cube(x, y, w, h, z1, z2, fog1, fog2)
var _x = argument0;
var _y = argument1;
var w = argument2 / 2;
var h = argument3 / 2;
var z1 = argument4;
var z2 = argument5;
var fog1 = argument6;
var fog2 = argument7;

d3d_transform_add_translation(_x, _y, fog2);
d3d_primitive_begin(pr_linelist);
d3d_vertex_colour(-w, -h, z1, c_white, fog1);
d3d_vertex_colour(w, -h, z1, c_white, fog1);;
d3d_vertex_colour(w, -h, z1, c_white, fog1);
d3d_vertex_colour(w, h, z1, c_white, fog1);
d3d_vertex_colour(w, h, z1, c_white, fog1);
d3d_vertex_colour(-w, h, z1, c_white, fog1);
d3d_vertex_colour(-w, h, z1, c_white, fog1);
d3d_vertex_colour(-w, -h, z1, c_white, fog1);


d3d_vertex_colour(-w, -h, z1, c_white, fog1);
d3d_vertex_colour(-w, -h, z2, c_white, fog2);

d3d_vertex_colour(w, -h, z1, c_white, fog1);
d3d_vertex_colour(w, -h, z2, c_white, fog2);

d3d_vertex_colour(w, h, z1, c_white, fog1);
d3d_vertex_colour(w, h, z2, c_white, fog2);

d3d_vertex_colour(-w, h, z1, c_white, fog1);
d3d_vertex_colour(-w, h, z2, c_white, fog2);

d3d_vertex_colour(-w, -h, z2, c_white, fog2);
d3d_vertex_colour(w, -h, z2, c_white, fog2);
d3d_vertex_colour(w, -h, z2, c_white, fog2);
d3d_vertex_colour(w, h, z2, c_white, fog2);
d3d_vertex_colour(w, h, z2, c_white, fog2);
d3d_vertex_colour(-w, h, z2, c_white, fog2);
d3d_vertex_colour(-w, h, z2, c_white, fog2);
d3d_vertex_colour(-w, -h, z2, c_white, fog2);


d3d_primitive_end();
d3d_transform_set_identity();
