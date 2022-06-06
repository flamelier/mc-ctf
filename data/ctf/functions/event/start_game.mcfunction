function ctf:setup/objectives
function ctf:setup/teams

difficulty hard
gamerule keepInventory true

gamerule doImmediateRespawn true
gamerule showDeathMessages false
scoreboard players set start END_CTF 0

kill @a[team=cecs]
kill @a[team=cola]
kill @e[type=minecraft:armor_stand]
clear @a
gamemode adventure @a
effect clear @a

#replaceitem entity @a[team=cola] armor.chest minecraft:leather_chestplate{Enchantments:[{id:"unbreaking",lvl:1000},{id:binding_curse,lvl:1}],display:{color:16711680}}
item replace entity @a[team=cola] armor.chest with minecraft:leather_chestplate{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1}],display:{color:16711680}}
#replaceitem entity @a[team=cecs] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1}],display:{color:255}}
item replace entity @a[team=cecs] armor.chest with minecraft:leather_chestplate{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1}],display:{color:255}}

# Setup the bases
#tp @s -464 70 420
tp @s 183 63 355
execute at @s run function ctf:setup/base/blue

#tp @s -146 70 259
tp @s 188 63 273
execute at @s run function ctf:setup/base/red

# Setup the signs
#tp @s -481 70 413
tp @s 179 65 362
execute at @s run function ctf:setup/signs/all

# tp @s -145 71 234
tp @s 190 65 263
execute at @s run function ctf:setup/signs/all

# Setup the spawnpoints
#spawnpoint @a[team=cecs] -480 70 415
spawnpoint @a[team=cecs] 180 65 364
#spawnpoint @a[team=cola] -144 71 236
spawnpoint @a[team=cola] 190 65 263

# Bring the flags back to base
execute at @e[name="BlueBase"] run setblock ~ ~1 ~ minecraft:light_blue_banner{Patterns:[{Color:11,Pattern:"bo"},{Color:11,Pattern:"cbo"},{Color:11,Pattern:"mr"},{Color:8,Pattern:"mc"},{Color:0,Pattern:"flo"}]}
execute at @e[name="BlueBase"] run tp @e[name="BlueMobile"] ~ ~ ~

execute at @e[name="RedBase"] run setblock ~ ~1 ~ minecraft:red_banner{Patterns:[{Color:6,Pattern:"tt"},{Color:6,Pattern:"bt"},{Color:14,Pattern:"mr"},{Color:0,Pattern:"sc"},{Color:11,Pattern:"mc"},{Color:5,Pattern:"glb"}]}
execute at @e[name="RedBase"] run tp @e[name="RedMobile"] ~ ~ ~

# Reset scores
scoreboard players set @e[name="BlueBase"] FlagPresent 1
scoreboard players set @e[name="BlueMobile"] FlagPresent 0

scoreboard players set @e[name="RedBase"] FlagPresent 1
scoreboard players set @e[name="RedMobile"] FlagPresent 0

scoreboard players set @a IsDead 0
scoreboard players set @a DeathRegisterd 0
scoreboard players set @a HasBlueFlag 0
scoreboard players set @a HasRedFlag 0
scoreboard players set @a FlagsCaptured 0
scoreboard players set @a FlagsStolen 0
scoreboard players set @a FlagsRecovered 0
scoreboard players set @a FlagsReturned 0
scoreboard players set @a FlagsDropped 0
scoreboard players set @e CallStack00 0
scoreboard players set @e PearlCooldown -1
scoreboard players set @e ParticleCooldown 100

scoreboard players set BlueTeam TeamCaptured 0
scoreboard players set RedTeam TeamCaptured 0
scoreboard players set BlueTeam TeamStolen 0
scoreboard players set RedTeam TeamStolen 0
scoreboard players set BlueTeam TeamRecovered 0
scoreboard players set RedTeam TeamRecovered 0
scoreboard players set BlueTeam TeamDropped 0
scoreboard players set RedTeam TeamDropped 0

scoreboard players set Game GameTime 0
scoreboard players set Game IsFinal 0

scoreboard objectives setdisplay sidebar TeamCaptured
scoreboard objectives setdisplay list FlagsCaptured

#title @a title {"text":"Go!","color":"green","italic":true}
#title @a subtitle {"text":"First to 3, 10 minute time limit","color":"green"}

schedule function ctf:loop/loop 20t
schedule function ctf:count/3 40t
schedule function ctf:count/2 60t
schedule function ctf:count/1 80t
schedule function ctf:count/go 100t
#execute if score Game IsFinal matches 0 run schedule function ctf:count/go 60t
#execute if score Game IsFinal matches 1 run schedule function ctf:count/go_final 60t