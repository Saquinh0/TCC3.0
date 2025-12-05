// Conta 1 segundo
timer_frames -= 1;

if (timer_frames <= 0) {
    global.time_limit -= 1;
    timer_frames = room_speed;
}

// GAME OVER quando chegar a zero
if (global.time_limit <= 0) {
    room_goto(Game_Over); // ou pause, ou mensagem
}
