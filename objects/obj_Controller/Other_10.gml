/// @description Insert description here
// You can write your code in this editor
randomize();

var roomH = round(room_height);
var roomW = round(room_width);

var layer_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(layer_id);

for(var h = 0; h < room_height; h++){
	for(var w = 0; w < room_width; w++){
		tilemap_set(map_id, 279, w, h);
	}
}



