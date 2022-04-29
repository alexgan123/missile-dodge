// Text and string manipulation functions are in this script.

// convenient draw text function
function draw_text_f(color, halign, valign, font, x, y, str) {
	draw_set_color(color);
	draw_set_halign(halign);
	draw_set_valign(valign);
	draw_set_font(font);
	draw_text(x, y, str)
}

/// @description string_thousands(real)
/// @param int
///Returns argument0 as a string with commas at every thousand digit
///eg 1234567890 becomes 1,234,567,890
function thousands(argument0) {

	var str,stl,rtn,place;

	str=string(floor(real(argument0))) //String to be passed
	stl=string_length(str) //Char length of that string
	rtn="" //What to return (ignored if string is under four digits long)

	if stl<=3 {
	    return str;
	}
	else {
	    place=((stl-1) mod 3)+1;
	    rtn+=string_copy(str,1,place)
	    while(place<string_length(str)) {
	        rtn+=","
	        rtn+=string_copy(str,place+1,3)
	        place+=3
	    }
	    return rtn;
	}
}

// trims special characters and spaces from a string. Used for string input for the textbox
function trim(str) {
	var new_string = "";
	for (var i = 1; i <= string_length(str); i++) {
		if (string_char_at(str, i) == "_") new_string += "_";
		else new_string += string_lettersdigits(string_char_at(str, i));
	}
	return new_string;
}

