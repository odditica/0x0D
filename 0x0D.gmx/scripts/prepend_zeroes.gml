///prepend_zeroes(string, length)
var str = argument0;
var lng = argument1;

while (string_length(str) < lng){
      str = "0" + str;
}

return str;
