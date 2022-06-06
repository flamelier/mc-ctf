execute if score start END_CTF matches 1 run function ctf:event/end_game
execute if score start END_CTF matches 0 run function ctf:loop/main
execute if score start END_CTF matches 0 run schedule function ctf:loop/loop 1t