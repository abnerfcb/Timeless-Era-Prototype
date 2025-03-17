draw_self();
draw_set_color(c_white);


if (keyboard_check(vk_delete)) {
    draw_text(x - 60, y - 40, "x: " + string(x) + ", y: " + string(y));
}