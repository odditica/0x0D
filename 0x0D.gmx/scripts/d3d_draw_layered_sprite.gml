///d3d_draw_layered_sprite(spr, index, x, y, z, xscale, yscale, xr, yr, zr, alpha, layerOffset)
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
var _lOff = argument11;

var _iNum = sprite_get_number(_spr);
var _zOff = (_iNum * _lOff) / 2
for (var i = 0; i < _iNum; i++){
    d3d_draw_sprite(_spr, i, _x, _y, _z - _zOff + i * _lOff, _xs, _ys, _xr, _yr, _zr, _alp);
}
