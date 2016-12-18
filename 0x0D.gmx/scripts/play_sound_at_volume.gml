///play_sound_at_volume(sound, vol)
var sound = argument0;
var vol = argument1;
audio_sound_gain(sound, vol * global.sndVol, 0);
audio_play_sound(sound, 0, 0);
