tellraw @a [{"selector": "@e[scores={CallStack00=1}]", "color": "red"}, {"color": "green", "text": " dropped the "}, {"color": "blue", "text": "blue flag"}, {"color": "green", "text": "!"}]

scoreboard players add @e[scores={CallStack00=1}] FlagsDropped 1
scoreboard players add RedTeam TeamDropped 1

item replace entity @e[scores={CallStack00=1}] armor.head with minecraft:air

execute at @e[name="BlueMobile"] run setblock ~ ~ ~ minecraft:light_blue_banner{Patterns:[{Color:11,Pattern:"bo"},{Color:11,Pattern:"cbo"},{Color:11,Pattern:"mr"},{Color:8,Pattern:"mc"},{Color:0,Pattern:"flo"}]}
scoreboard players set @e[name="BlueMobile"] FlagPresent 1
scoreboard players set @e[scores={HasBlueFlag=1,IsDead=1}] HasBlueFlag 0

