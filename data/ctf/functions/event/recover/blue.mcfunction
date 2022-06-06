tellraw @a [{"color": "green", "text": "The "}, {"color": "blue", "text": "blue flag"}, {"color": "green", "text": " has been recovered by "}, {"selector": "@e[scores={CallStack00=1}]", "color": "blue"}, {"color": "green", "text": "!"}]

scoreboard players set @e[scores={CallStack00=1}] HasBlueFlag 0
scoreboard players add @e[scores={CallStack00=1}] FlagsRecovered 1
scoreboard players add BlueTeam TeamRecovered 1

item replace entity @e[scores={CallStack00=1}] armor.head with minecraft:air

# Remove the visible flag from the field
execute at @e[name="BlueBase"] run setblock ~ ~1 ~ minecraft:air replace
execute at @e[name="BlueMobile"] run setblock ~ ~ ~ minecraft:air replace

# Respawn the flag
execute at @e[name="BlueBase"] run setblock ~ ~1 ~ minecraft:light_blue_banner{Patterns:[{Color:11,Pattern:"bo"},{Color:11,Pattern:"cbo"},{Color:11,Pattern:"mr"},{Color:8,Pattern:"mc"},{Color:0,Pattern:"flo"}]}
scoreboard players set @e[name="BlueBase"] FlagPresent 1
scoreboard players set @e[name="BlueMobile"] FlagPresent 0