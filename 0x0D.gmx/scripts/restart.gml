var f = global.flash;
with (all) instance_destroy();
var a = instance_create(0, 0, objControl);
global.gameState = GAME_STATE_START;
global.flash = f;
destroy_surface();
