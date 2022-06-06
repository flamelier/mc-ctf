function ctf:loop/flag_logic

# # If the player who has the flag fully captures it
execute at @e[name="RedBase"] if entity @p[team=cola,distance=..3,scores={HasBlueFlag=1,IsDead=0}] run scoreboard players set @p[team=cola,distance=..3,scores={HasBlueFlag=1,IsDead=0}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/capture/blue
execute if entity @e[scores={CallStack00=1}] if score RedTeam TeamCaptured matches 5.. run function ctf:event/end_game
scoreboard players set @a CallStack00 0

execute at @e[name="BlueBase"] if entity @p[team=cecs,distance=..3,scores={HasRedFlag=1,IsDead=0}] run scoreboard players set @p[team=cecs,distance=..3,scores={HasRedFlag=1,IsDead=0}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/capture/red
execute if entity @e[scores={CallStack00=1}] if score BlueTeam TeamCaptured matches 5.. run function ctf:event/end_game
scoreboard players set @a CallStack00 0

function ctf:loop/player_logic

execute if score Game GameTime matches 0.. run scoreboard players add Game GameTime 1