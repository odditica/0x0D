///check_input(input to check)
var inp, validate, gp;
inp = argument0;
validate = false;
gp = global.gp2;
if (inp == KEY_LEFT){
   if (gp != -1){
      if (gamepad_button_check(gp, gp_padl)){
         validate = true;
      }
   }
   if (keyboard_check(vk_left)){
      validate = true;
   }
}

if (inp == KEY_RIGHT){
   if (gp != -1){
      if (gamepad_button_check(gp, gp_padr)){
         validate = true;
      }
   }
   if (keyboard_check(vk_right)){
      validate = true;
   }
}

if (inp == KEY_UP){
   if (gp != -1){
      if (gamepad_button_check(gp, gp_padu)){
         validate = true;
      }
   }
   if (keyboard_check(vk_up)){
      validate = true;
   }
}

if (inp == KEY_DOWN){
   if (gp != -1){
      if (gamepad_button_check(gp, gp_padd)){
         validate = true;
      }
   }
   if (keyboard_check(vk_down)){
      validate = true;
   }
}

if (inp == KEY_SHOOT){
   if (gp != -1){
      if (gamepad_button_check_pressed(gp, gp_face1)){
         validate = true;
      }
   }
   if (keyboard_check_pressed(ord('Y')) || keyboard_check_pressed(ord('Z'))){
      validate = true;
   }
}

if (inp == KEY_SLOMO){
   if (gp != -1){
      if (gamepad_button_check_pressed(gp, gp_face2) || gamepad_button_check_pressed(gp, gp_shoulderrb) || gamepad_button_check_pressed(gp, gp_shoulderr)){
         validate = true;
      }
   }
   if (keyboard_check_pressed(ord('X'))){
      validate = true;
   }
}

if (inp == KEY_PAUSE){
   if (gp != -1){
      if (gamepad_button_check_pressed(gp, gp_start)){
         validate = true;
      }
   }
   if (keyboard_check_pressed(vk_escape)){
      validate = true;
   }
}

if (inp == KEY_EXITPAUSE){
   if (gp != -1){
      if (gamepad_button_check_pressed(gp, gp_select)){
         validate = true;
      }
   }
   if (keyboard_check_pressed(vk_enter)){
      validate = true;
   }
}

return validate;
