// draw the current fps at the highest depth so it will always render on top of everything
draw_text_f(c_white, fa_left, fa_bottom, calibri_25, 20, 1060, string(fps) + " FPS");

// draw fps at bottom right of the screen
draw_text_f(c_white, fa_right, fa_bottom, calibri_25, 1900, 1060, "missile-dodge-1.0");

// debug draw (comment out when not in use)
//draw_text_f(c_white, fa_left, fa_bottom, calibri_25, 20, 1010, "sfx music " + string(global.options_sfx) + " " + string(global.options_music));
