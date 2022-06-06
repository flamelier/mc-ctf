tellraw @a [{"color": "green", "text": "The "}, {"color": "blue", "text": "blue flag"}, {"color": "green", "text": " has been stolen by "}, {"selector": "@e[scores={CallStack00=1}]", "color": "red"}, {"color": "green", "text": "!"}]

scoreboard players add @e[scores={CallStack00=1}] FlagsStolen 1
scoreboard players add RedTeam TeamStolen 1

item replace entity @e[scores={CallStack00=1}] armor.head with minecraft:light_blue_banner{BlockEntityTag:{Patterns:[{Color:11,Pattern:"bo"},{Color:11,Pattern:"cbo"},{Color:11,Pattern:"mr"},{Color:8,Pattern:"mc"},{Color:0,Pattern:"flo"}]}}

# The player gets the flag and the base loses the flag
scoreboard players set @e[scores={CallStack00=1}] HasBlueFlag 1
execute at @e[name="BlueBase",scores={FlagPresent=1}] run setblock ~ ~1 ~ minecraft:air replace
execute at @e[name="BlueMobile",scores={FlagPresent=1}] run setblock ~ ~ ~ minecraft:air replace

scoreboard players set @e[name="BlueBase",scores={FlagPresent=1}] FlagPresent 0
scoreboard players set @e[name="BlueMobile",scores={FlagPresent=1}] FlagPresent 0

execute as @a at @s run playsound minecraft:event.raid.horn hostile @s ~ ~ ~ 1023 1

# Remove speed from a scout that stole the flag
effect clear @e[scores={CallStack00=1}] minecraft:speed