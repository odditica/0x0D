global.gp = gamepad_is_supported();
global.gp2 = -1;

if (global.gp){
   global.gp2 = 0;
   for (var i = 0; i < gamepad_get_device_count(); i++){
       if (string_count("xbox", string_lower(gamepad_get_description(i))) || string_count("playstation", string_lower(gamepad_get_description(i)))){
          global.gp2 = i;
          break;   
       }
   }  
}
