tellraw @a [{"color": "green", "text": "The "}, {"color": "red", "text": "red flag"}, {"color": "green", "text": " has been recovered by "}, {"selector": "@e[scores={CallStack00=1}]", "color": "red"}, {"color": "green", "text": "!"}]

scoreboard players set @e[scores={CallStack00=1}] HasRedFlag 0
scoreboard players add @e[scores={CallStack00=1}] FlagsRecovered 1
scoreboard players add RedTeam TeamRecovered 1

item replace entity @e[scores={CallStack00=1}] armor.head with minecraft:air

# remove the visible flag from the field
execute at @e[name="RedBase"] run setblock ~ ~1 ~ minecraft:air replace
execute at @e[name="RedMobile"] run setblock ~ ~ ~ minecraft:air replace

# Respawn the flag
execute at @e[name="RedBase"] run setblock ~ ~1 ~ minecraft:red_banner{Patterns:[{Color:6,Pattern:"tt"},{Color:6,Pattern:"bt"},{Color:14,Pattern:"mr"},{Color:0,Pattern:"sc"},{Color:11,Pattern:"mc"},{Color:5,Pattern:"glb"}]}
scoreboard players set @e[name="RedBase"] FlagPresent 1
scoreboard players set @e[name="RedMobile"] FlagPresent 0