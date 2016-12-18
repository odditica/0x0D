///neighbours(x, y)
var _x = argument0;
var _y = argument1;
var _g = argument2;
var _ret = 0;
var _width = ds_grid_width(_g);
var _height = ds_grid_height(_g);

//bit flags
//r   ur u  ul l bl b br
//128 64 32 16 8 4  2 1

if (_x != _width - 1){
   //r
   if (_g[# _x + 1, _y] == 1){
      _ret ^= 128;
   }
   
   //br
   if (_y != _height - 1){
      if (_g[# _x + 1, _y + 1] == 1){
         _ret ^= 1;
      }   
   }
   
   //ur
   if (_y != 0){
      if (_g[# _x + 1, _y - 1] == 1){
         _ret ^= 64;
      }   
   }
}

//u
if (_y != 0){
   if (_g[# _x, _y - 1] == 1){
      _ret ^= 32;
   }   
}

//b
if (_y != _height - 1){
   if (_g[# _x, _y + 1] == 1){
      _ret ^= 2;
   }   
}

if (_x != 0){
   //l
   if (_g[# _x - 1, _y] == 1){
      _ret ^= 8;
   }

   //ul
    if (_y != 0){
       if (_g[# _x - 1, _y - 1] == 1){
          _ret ^= 16;
       }   
    }
    
    //bl
    if (_y != _height - 1){
       if (_g[# _x - 1, _y + 1] == 1){
          _ret ^= 4;
       }   
    }
}

return _ret;




