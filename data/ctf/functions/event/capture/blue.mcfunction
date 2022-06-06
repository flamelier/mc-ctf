tellraw @a [{"color": "green", "text": "The "}, {"color": "blue", "text": "blue flag"}, {"color": "green", "text": " has been captured by "}, {"selector": "@e[scores={CallStack00=1}]", "color": "red"}, {"color": "green", "text": "!"}]
scoreboard players set @e[scores={CallStack00=1}] HasBlueFlag 0
scoreboard players add @e[scores={CallStack00=1}] FlagsCaptured 1
scoreboard players add RedTeam TeamCaptured 1

title @a[team=cola] title {"text":"Your team has scored!","color":"green"}
title @a[team=cecs] title {"text":"The enemy has scored!","color":"green"}
title @a subtitle [{"score":{"name":"RedTeam","objective":"TeamCaptured"},"color":"red","bold":true},{"text":" - ","color":"white","bold":false},{"score":{"name":"BlueTeam","objective":"TeamCaptured"},"color":"blue","bold":true}]

item replace entity @e[scores={CallStack00=1}] armor.head with minecraft:air

# Respawn the flag
execute at @e[name="BlueBase"] run setblock ~ ~1 ~ minecraft:light_blue_banner{Patterns:[{Color:11,Pattern:"bo"},{Color:11,Pattern:"cbo"},{Color:11,Pattern:"mr"},{Color:8,Pattern:"mc"},{Color:0,Pattern:"flo"}]}
scoreboard players set @e[name="BlueBase"] FlagPresent 1
scoreboard players set @e[name="BlueMobile"] FlagPresent 0

execute as @a[team=cola] at @s run playsound minecraft:entity.player.levelup hostile @s ~ ~ ~ 1023
execute as @a[team=cecs] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 1023