function scr_textos(){
	switch npc_nome{
		case "professor":


		ds_grid_add_text("Então Adalberto como você sabe hoje é o dia da prova final, se vc não atingir os pontos necessários você reprova.", spr_professor, 1, "Professor");
		ds_grid_add_text("Nossa, você parece meio pálido, você está bem?", spr_professor, 1, "Professor");
		ds_grid_add_text("estou meio tonto professor!", spr_parado_baixo_palido, 0, "Adalberto");


		
		break


		
		case "Mãe":
		ds_grid_add_text("Filho, ainda bem que te acordei, se não você se atrasaria para prova!", spr_mae, 1, "Mãe");
		ds_grid_add_text("Mãe, estou muito nervoso para a prova", spr_player_parado_baixo, 0, "Adalberto");


	}
}

function ds_grid_add_row()
{
    ///arg ds_grid
    var grid = argument[0];
    ds_grid_resize( grid,ds_grid_width( grid),ds_grid_height( grid)+1);
    return(ds_grid_height( grid)-1);
}
function ds_grid_add_text(){
    ////@arg texto 
    ////@arg retrato 
    ////@arg lado
    var grid = texto_grid;
    var _y = ds_grid_add_row(grid);

    grid[# 0, _y] = argument[0];
    grid[# 1, _y] = argument[1];
    grid[# 2, _y] = argument[2];
    grid[# 3, _y] = argument[3];
}