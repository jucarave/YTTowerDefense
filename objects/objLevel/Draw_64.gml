draw_set_font(fntUI);
draw_text(0,0, "Money: $" + string(money));

draw_set_color(c_red);
draw_rectangle(8, 60, 8 + 200 * (hp / maxHP), 60 + 16, false);
draw_set_color(c_white);