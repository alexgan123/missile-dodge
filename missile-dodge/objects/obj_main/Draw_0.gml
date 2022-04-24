// draw the current fps at the highest depth so it will always render on top of everything
draw_text_f(c_white, fa_left, fa_bottom, calibri_25, 20, 1060, string(fps) + " FPS");

// debug draw (comment out when not in use)
draw_text_f(c_white, fa_left, fa_bottom, calibri_25, 20, 1010, "keyboard_string: " + keyboard_string);
draw_text_f(c_white, fa_left, fa_bottom, calibri_25, 20, 960, "inst textbox first start text: " + inst_textbox_first_start.text);
draw_text_f(c_white, fa_left, fa_bottom, calibri_25, 20, 910, "inst textbox profile text: " + inst_textbox_profile.text);
