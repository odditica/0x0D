///create_enemy(formation, type, xOff, yOff)
var _formTemp = argument[0];
var lng = string_length(_formTemp);
var _form = "";

for (var i = 1; i <= lng; i++){
    var a = string_char_at(_formTemp, i);
    if (a == 'x' || a == '#'){
       _form = _form + a;
    }
}


var lng = string_length(_form);

var type = argument[1];

var xOff = 30;
var yOff = 32;

if (argument_count == 4){
   xOff = argument[2];
   xOff = argument[3];
}

var _charOffset = 0;
var _lineOffset = 0;
var _currentChar = '';
var _enemyCount = 0;
_arr[0] = noone;

for (var i = 1; i <= lng; i++){
    _currentChar = string_char_at(_form, i);
    if (_currentChar == 'x'){ 
       _arr[@ _enemyCount] = instance_create(215 + xOff * ((i - 1) % 8), -16 - ((i - 1) div 8) * yOff, type); 
       _enemyCount ++;       
    }    
}

return _arr;

