title @a title {"text":"Final round!","color":"green","bold":true,"italic":true}
title @a subtitle {"text":"First to 5, no time limit","color":"green"}
execute as @a at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 1.4
execute as @a at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 1.8
execute as @a at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 1.05
playsound minecraft:entity.experience_orb.pickup master @a[team=kart]