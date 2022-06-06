function ctf:loop/flag_logic

# # If the player who has the flag fully captures it
execute at @e[name="RedBase"] if entity @p[team=cola,distance=..3,scores={HasBlueFlag=1,IsDead=0}] run scoreboard players set @p[team=cola,distance=..3,scores={HasBlueFlag=1,IsDead=0}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/capture/blue
execute if entity @e[scores={CallStack00=1}] if score RedTeam TeamCaptured matches 3.. run function ctf:event/end_game
execute if entity @e[scores={CallStack00=1}] if score Game GameTime matches 9000.. run function ctf:event/end_game
scoreboard players set @a CallStack00 0

execute at @e[name="BlueBase"] if entity @p[team=cecs,distance=..3,scores={HasRedFlag=1,IsDead=0}] run scoreboard players set @p[team=cecs,distance=..3,scores={HasRedFlag=1,IsDead=0}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/capture/red
execute if entity @e[scores={CallStack00=1}] if score BlueTeam TeamCaptured matches 3.. run function ctf:event/end_game
execute if entity @e[scores={CallStack00=1}] if score Game GameTime matches 9000.. run function ctf:event/end_game
scoreboard players set @a CallStack00 0

function ctf:loop/player_logic

execute if score Game GameTime matches 0.. run scoreboard players add Game GameTime 1


execute if score Game GameTime matches 6000 run tellraw @a [{"color": "green", "text": "5 Minutes remaining!"}] 
execute if score Game GameTime matches 9600 run tellraw @a [{"color": "green", "text": "2 Minutes remaining!"}] 
execute if score Game GameTime matches 10800 run tellraw @a [{"color": "green", "text": "1 Minutes remaining!"}] 
execute if score Game GameTime matches 11800 run tellraw @a [{"color": "green", "text": "Instant death activating in 10!"}] 
execute if score Game GameTime matches 11820 run tellraw @a [{"color": "green", "text": "9!"}]
execute if score Game GameTime matches 11840 run tellraw @a [{"color": "green", "text": "8!"}] 
execute if score Game GameTime matches 11860 run tellraw @a [{"color": "green", "text": "7!"}] 
execute if score Game GameTime matches 11880 run tellraw @a [{"color": "green", "text": "6!"}] 
execute if score Game GameTime matches 11900 run tellraw @a [{"color": "green", "text": "5!"}] 
execute if score Game GameTime matches 11920 run tellraw @a [{"color": "green", "text": "4!"}] 
execute if score Game GameTime matches 11940 run tellraw @a [{"color": "green", "text": "3!"}] 
execute if score Game GameTime matches 11940 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1023 1
execute if score Game GameTime matches 11960 run tellraw @a [{"color": "green", "text": "2!"}] 
execute if score Game GameTime matches 11960 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1023 1
execute if score Game GameTime matches 11980 run tellraw @a [{"color": "green", "text": "1!"}] 
execute if score Game GameTime matches 11980 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1023 1

execute if score Game GameTime matches 12000 run tellraw @a [{"color": "green", "text": "Instant death mode activated! The next score wins!", "bold": true, "italic": true}]
execute if score Game GameTime matches 12000 run title @a title {"color":"green", "text":"Next score wins!","bold": true, "italic": true}
execute if score Game GameTime matches 12000 run title @a subtitle {"color":"green", "text":"Instant death mode activated!","bold": true, "italic": true}

execute if score Game GameTime matches 12000..12040 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1023 2