kill @e[name="BlueBase"]
kill @e[name="BlueMobile"]
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"BlueBase\"",CustomNameVisible:0b,Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"BlueMobile\"",CustomNameVisible:0b,Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @e[name="BlueBase"] at @s run setblock ~ ~ ~ minecraft:blue_wool
execute as @e[name="BlueBase"] at @s run setblock ~ ~1 ~ minecraft:light_blue_banner{Patterns:[{Color:11,Pattern:"bo"},{Color:11,Pattern:"cbo"},{Color:11,Pattern:"mr"},{Color:8,Pattern:"mc"},{Color:0,Pattern:"flo"}]}
scoreboard players set @e[name="BlueBase"] FlagPresent 1
scoreboard players set @e[name="BlueMobile"] FlagPresent 0
