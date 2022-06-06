tellraw @a [{"color": "green", "text": "The "},{"color": "red", "text": "red flag"},{"color": "green", "text": " has been captured by "}, {"selector": "@e[scores={CallStack00=1}]", "color": "blue"}, {"color": "green", "text": "!"}]
scoreboard players set @e[scores={CallStack00=1}] HasRedFlag 0
scoreboard players add @e[scores={CallStack00=1}] FlagsCaptured 1
scoreboard players add BlueTeam TeamCaptured 1

title @a[team=cola] title {"text":"The enemy has scored!","color":"green"}
title @a[team=cecs] title {"text":"Your team has scored!","color":"green"}
title @a subtitle [{"score":{"name":"RedTeam","objective":"TeamCaptured"},"color":"red","bold":true},{"text":" - ","color":"white","bold":false},{"score":{"name":"BlueTeam","objective":"TeamCaptured"},"color":"blue","bold":true}]


item replace entity @e[scores={CallStack00=1}] armor.head with minecraft:air

# Respawn the flag
execute at @e[name="RedBase"] run setblock ~ ~1 ~ minecraft:red_banner{Patterns:[{Color:6,Pattern:"tt"},{Color:6,Pattern:"bt"},{Color:14,Pattern:"mr"},{Color:0,Pattern:"sc"},{Color:11,Pattern:"mc"},{Color:5,Pattern:"glb"}]}
scoreboard players set @e[name="RedBase"] FlagPresent 1
scoreboard players set @e[name="RedMobile"] FlagPresent 0

execute as @a[team=cecs] at @s run playsound minecraft:entity.player.levelup hostile @s ~ ~ ~ 1023
execute as @a[team=cola] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 1023