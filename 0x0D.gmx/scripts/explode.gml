repeat(25){
    var _x = x + irandom_range(-5, 5)
    var _y = y + irandom_range(-5, 5);
    var a = instance_create(_x, _y, objCircleParticle);
    var _dir = random(2 * pi); 
    var _force = random_range(.1, 4);
    a.dX = cos(_dir) * _force;
    a.dY = -sin(_dir) * _force;
    a.dY += dY;
    //a.grav = -.001;    
    a.r = random_range(2, 7);
    a.inverted = true;
    a._a = 0;
    a.shrinkSpeed = random_range(.05, .1);
}
shake(2);
dead = 1;
play_sound_at_volume_random(sndExplosion, .8, .8, 1.2);
mask_index = sprEmptyMask;
