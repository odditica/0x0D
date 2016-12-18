///play_sound_at_volume_random(sound, vol, a, b)
var sound = argument0;
var vol = argument1;
var pitch0 = argument2;
var pitch1 = argument3;
audio_sound_pitch(sound, random_range(pitch0, pitch1));
audio_sound_gain(sound, vol * global.sndVol, 0);
audio_play_sound(sound, 0, 0);

