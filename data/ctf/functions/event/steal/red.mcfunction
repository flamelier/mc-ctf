tellraw @a [{"color": "green", "text": "The "}, {"color": "red", "text": "red flag"}, {"color": "green", "text": " has been stolen by "}, {"selector": "@e[scores={CallStack00=1}]", "color": "blue"}, {"color": "green", "text": "!"}]

scoreboard players add @e[scores={CallStack00=1}] FlagsStolen 1
scoreboard players add BlueTeam TeamStolen 1

item replace entity @e[scores={CallStack00=1}] armor.head with minecraft:red_banner{BlockEntityTag:{Patterns:[{Color:6,Pattern:"tt"},{Color:6,Pattern:"bt"},{Color:14,Pattern:"mr"},{Color:0,Pattern:"sc"},{Color:11,Pattern:"mc"},{Color:5,Pattern:"glb"}]}}

# The player gets the flag and the base loses the flag
scoreboard players set @e[scores={CallStack00=1}] HasRedFlag 1
execute at @e[name="RedBase",scores={FlagPresent=1}] run setblock ~ ~1 ~ minecraft:air replace
execute at @e[name="RedMobile",scores={FlagPresent=1}] run setblock ~ ~ ~ minecraft:air replace

scoreboard players set @e[name="RedBase",scores={FlagPresent=1}] FlagPresent 0
scoreboard players set @e[name="RedMobile",scores={FlagPresent=1}] FlagPresent 0

execute as @a at @s run playsound minecraft:event.raid.horn hostile @s ~ ~ ~ 1023 1

# Remove speed from a scout that stole the flag
effect clear @e[scores={CallStack00=1}] minecraft:speed