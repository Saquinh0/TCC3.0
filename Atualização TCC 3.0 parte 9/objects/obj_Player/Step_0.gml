//movimentação
var _dir = keyboard_check(ord("D"))
var _esq = keyboard_check(ord("A"))
var _baixo = keyboard_check(ord("S"))
var _cima = keyboard_check(ord("W"))

//velocidade
velh = (_dir - _esq) * vel
velv = (_baixo - _cima) * vel

repeat(abs(velh))
{
//colisão horizontal
if(!place_meeting(x + sign(velh), y, obj_parede_lateral))
{
	x += sign(velh)
} 
else //está colidindo
{
	velh = 0
}
}


if(!place_meeting(x + sign(velh), y, porta))
{
	x += sign(velh)
} 
else //está colidindo
{
	velh = 0
}


repeat(abs(velv))
{
//colisão horizontal
if(!place_meeting(x, y + sign(velv), obj_parede_superior_inferior))
{
	y += sign(velv)
} 
else //está colidindo
{
	velv = 0
}
}

//mudança de sprite
if(velh != 0 or velv != 0)
{
	Andando = 1
}
else
{
	Andando = 0
}

if(_dir) lado = 2
if(_esq) lado = 3
if(_baixo) lado = 0
if(_cima) lado = 1

sprite_index = sprites[Andando][lado]

//DIAVOLO
nome = "Adalberto";
global.Dialogo = false;
// Verifica se NÃO há diálogo ativo
if (!global.Dialogo) {

    // Só inicia se o jogador apertar F
    if (keyboard_check_pressed(ord("F"))) {

        // Procura o NPC mais próximo
        var _npc = instance_nearest(x, y, obj_par_npc);

        if (_npc != noone) {

            var d = point_distance(x, y, _npc.x, _npc.y);

            // Verifica distância
            if (d <= 999) {

                global.Dialogo = true;

                var _dialogo = instance_create_layer(_npc.x, _npc.y - 10, "dialogo", obj_dialogo);

                _dialogo.npc_nome = _npc.nome;

            }
        }
    }
}