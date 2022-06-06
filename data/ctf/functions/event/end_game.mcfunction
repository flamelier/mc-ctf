tellraw @a [{"color": "green", "text": "Game over!"}]

execute at @a run playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 1023

effect clear @a
effect give @a minecraft:slowness 20 255
effect give @a minecraft:jump_boost 20 128

title @a title {"text":"Game over!","bold":true,"italic":true,"color":"green"}

execute if score BlueTeam TeamCaptured > RedTeam TeamCaptured run tellraw @a [{"color": "green", "text": "Team "}, {"color": "blue", "text": "blue"}, {"color": "green", "text": " has won!"}]
execute if score BlueTeam TeamCaptured > RedTeam TeamCaptured run title @a subtitle {"text":"Blue team wins!","color":"blue"}

execute if score BlueTeam TeamCaptured < RedTeam TeamCaptured run tellraw @a [{"color": "green", "text": "Team "}, {"color": "red", "text": "red"}, {"color": "green", "text": " has won!"}]
execute if score BlueTeam TeamCaptured < RedTeam TeamCaptured run title @a subtitle {"text":"Red team wins!","color":"red"}

execute if score BlueTeam TeamCaptured = RedTeam TeamCaptured run tellraw @a [{"color": "green", "text": "There was somehow a tie... interesting"}]
execute if score BlueTeam TeamCaptured = RedTeam TeamCaptured run title @a subtitle {"text":"It do be a tie ¯\\_(ツ)_/¯","color":"white"}

gamerule doImmediateRespawn false
gamerule showDeathMessages true
scoreboard players set start END_CTF 0
difficulty easy
gamerule keepInventory false

# Need to remove tags
tag @a remove Medic
tag @a remove Mage
tag @a remove Assassin
tag @a remove Scout
tag @a remove Normie
tag @a remove Tank
clear @a[team=cecs]
clear @a[team=cola]
tp @a[team=cecs] 157 89 316
tp @a[team=cola] 157 89 316
spawnpoint @a[team=cecs] 157 89 316
spawnpoint @a[team=cola] 157 89 316
team leave @a[team=cecs]
team leave @a[team=cola]