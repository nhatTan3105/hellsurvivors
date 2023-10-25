/// @description Insert description here
// You can write your code in this editor

/// @function array_shuffle(array)
/// @description Shuffle the elements of an array.
/// @param {array} array - The array to shuffle.
/// @returns {array} Shuffled array.
if (global.canPlaySound) {
    audio_play_sound(item_collect, 10, false); 
}

//Pause game when level up
if(instance_exists(obj_UpLevel0)){
	exit;
}
alarm[8] = 1;
instance_destroy(other.id)	



