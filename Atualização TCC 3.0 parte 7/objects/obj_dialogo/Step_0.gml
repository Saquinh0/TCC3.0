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