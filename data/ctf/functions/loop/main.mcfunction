execute if score Game GameTime matches 0.. if score Game IsFinal matches 0 run function ctf:loop/game
execute if score Game GameTime matches 0.. unless score Game IsFinal matches 0 run function ctf:loop/final

execute if score Game GameTime matches ..-1 run scoreboard players set Game GameTime -1