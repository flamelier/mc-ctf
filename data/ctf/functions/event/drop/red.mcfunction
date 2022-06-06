tellraw @a [{"selector": "@e[scores={CallStack00=1}]", "color": "blue"}, {"color": "green", "text": " dropped the "}, {"color": "red", "text": "red flag"}, {"color": "green", "text": "!"}]

scoreboard players add @e[scores={CallStack00=1}] FlagsDropped 1
scoreboard players add BlueTeam TeamDropped 1

item replace entity @e[scores={CallStack00=1}] armor.head with minecraft:air

execute at @e[name="RedMobile"] run setblock ~ ~ ~ minecraft:red_banner{Patterns:[{Color:6,Pattern:"tt"},{Color:6,Pattern:"bt"},{Color:14,Pattern:"mr"},{Color:0,Pattern:"sc"},{Color:11,Pattern:"mc"},{Color:5,Pattern:"glb"}]}
scoreboard players set @e[name="RedMobile"] FlagPresent 1
scoreboard players set @e[scores={HasRedFlag=1,IsDead=1}] HasRedFlag 0
