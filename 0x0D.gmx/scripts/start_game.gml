instance_create(0, 0, objLevelController);
instance_create(320, room_height, objShip);
global.gameState = GAME_STATE_GAME;
with (objLevelController){
    rndTimer = sec_RT(150);
    timer_create(sec(5), 0);
    timer_create(sec(7), 7);
    timer_create(sec(8), 6);
    timer_create(sec(5), 1);
    timer_create(sec(8), 3);
    timer_create(sec(10), 2);
    timer_create(sec(5), 5);
    timer_create(sec(8), 4);
    timer_create(sec(5), 8);
    timer_create(sec(10), 9);
    timer_create(sec(10), 10);
    timer_create(sec(10), 6);
    timer_create(sec(10), 11);
    timer_create(sec(5), 5);
    timer_create(sec(5), 12);
    timer_create(sec(10), 6);
    timer_create(sec(3), 4);
    timer_create(sec(3), 4);
    timer_create(sec(20), 13);
}
global.ammo = 5;
