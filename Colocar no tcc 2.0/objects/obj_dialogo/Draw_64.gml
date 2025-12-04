if inicializar_dialogo == false{
    scr_textos();
    inicializar_dialogo = true;
}

if keyboard_check_pressed(vk_enter){
    if pagina < ds_grid_height(texto_grid) - 1{
        pagina++;
    }
    else{
        global.Dialogo = false;
        instance_destroy(obj_dialogo);
    }
}
if inicializar_dialogo == true{
 var _guil = display_get_gui_width();
 var _guia = display_get_gui_height();

 var _xx = 0;
 var _yy = _guia - 200;
 var _c = c_black;
 var _sprite = texto_grid[# Infos.Retrato, pagina];
 draw_set_font(Font1);
 draw_set_color(c_white);
 draw_set_halign(fa_left);
 draw_set_valign(fa_top);

 //Lado esquerdo
 if texto_grid[# Infos.Lado, pagina] == 0{
    draw_rectangle_colour(_xx + 200, _yy, _guil, _guia, _c, _c, _c, _c, false);
    draw_text(_xx + 236, _yy - 32, texto_grid[# Infos.Nome, pagina]);
    draw_text_ext(_xx + 230, _yy + 30, texto_grid[# Infos.Texto, pagina], 32, _guil - 264);

    draw_sprite_ext(_sprite, 0, 100, _guia, 3, 3, 0, c_white, 1);
 }//lado direito
 else{
    draw_rectangle_colour(_xx, _yy, _guil - 200, _guia, _c, _c, _c, _c, false);
    var _stgw = string_width(texto_grid[# Infos.Nome, pagina]);
    draw_text(_guil - 216 - _stgw, _yy - 32, texto_grid[# Infos.Nome, pagina]);
    draw_text_ext(_xx + 30, _yy + 30, texto_grid[# Infos.Texto, pagina], 32, _guil - 264);

    draw_sprite_ext(_sprite, 0, _guil - 100, _guia, -3, 3, 0, c_white, 1);
 }
}