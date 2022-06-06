summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"SignPlacer\"",NoGravity:1b}
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run function ctf:setup/signs/assassin
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run tp @s ~1 ~ ~
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run function ctf:setup/signs/mage
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run tp @s ~1 ~ ~
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run function ctf:setup/signs/medic
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run tp @s ~-2 ~1 ~
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run function ctf:setup/signs/tank
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run tp @s ~1 ~ ~
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run function ctf:setup/signs/normie
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run tp @s ~1 ~ ~
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run function ctf:setup/signs/scout
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run tp @s ~-2 ~1 ~
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run function ctf:setup/signs/instruct_1
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run tp @s ~1 ~ ~
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run function ctf:setup/signs/instruct_2
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run tp @s ~1 ~ ~
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run function ctf:setup/signs/instruct_3
execute as @e[type=minecraft:armor_stand,name="SignPlacer"] at @s run kill @s