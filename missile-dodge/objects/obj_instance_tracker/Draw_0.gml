if (tracking) {
	var xx = camera_get_view_x(view_camera[0])
	var yy = camera_get_view_y(view_camera[0])
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(calibri_15)

	var array_layers = layer_get_all()
	var instcnt = 0;
	
	for (var i = 0; i < array_length(array_layers); i++) {
		var curlayer = array_layers[i];
		var array_elements = layer_get_all_elements(curlayer)
		draw_text(xx + (100 + i*220), yy + 150, layer_get_name(curlayer))
		
		if (array_length(array_elements) == 0) {
		continue;
		}
		if (layer_get_element_type(array_elements[0]) != layerelementtype_instance) {
		continue;
		}
		for (var j = 0; j < array_length(array_elements); j++) {
			draw_text(xx + (100 + i*220), yy + (200 + j*30), object_get_name((layer_instance_get_instance(array_elements[j])).object_index));
			instcnt += 1;
		}
	}
	
	draw_set_font(calibri_30)
	if (instance_count - instcnt != 0) draw_set_color(color_red)
	draw_text(xx + 1400, yy + 60, "inst_cnt: " + string(instance_count))
	
	draw_set_font(calibri_15)
	draw_set_color(c_white)
	draw_text(xx + 960, yy + 60, + "Layers in the room: " + string(array_length(array_layers)))
}
