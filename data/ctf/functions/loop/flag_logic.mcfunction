# A player steals a flag
execute at @e[name="BlueBase",scores={FlagPresent=1}] if entity @e[name="RedBase",scores={FlagPresent=1}] if entity @p[team=cola,distance=..3,tag=!Tank,tag=!Assassin] run scoreboard players set @p[team=cola,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/steal/blue
scoreboard players set @a CallStack00 0

execute at @e[name="BlueMobile",scores={FlagPresent=1}] if entity @e[name="RedBase",scores={FlagPresent=1}] if entity @p[team=cola,distance=..3,tag=!Tank,tag=!Assassin] run scoreboard players set @p[team=cola,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/steal/blue
scoreboard players set @a CallStack00 0

execute at @e[name="RedBase",scores={FlagPresent=1}] if entity @e[name="BlueBase",scores={FlagPresent=1}] if entity @p[team=cecs,distance=..3,tag=!Tank,tag=!Assassin] run scoreboard players set @p[team=cecs,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/steal/red
scoreboard players set @a CallStack00 0

execute at @e[name="RedMobile",scores={FlagPresent=1}] if entity @e[name="BlueBase",scores={FlagPresent=1}] if entity @p[team=cecs,distance=..3,tag=!Tank,tag=!Assassin] run scoreboard players set @p[team=cecs,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/steal/red
scoreboard players set @a CallStack00 0


# Have the mobile follow the player around
execute at @e[scores={HasBlueFlag=1,IsDead=0}] if entity @e[scores={HasBlueFlag=1,IsDead=0}] run tp @e[name="BlueMobile"] ~ ~ ~
execute at @e[scores={HasRedFlag=1,IsDead=0}] if entity @e[scores={HasRedFlag=1,IsDead=0}] run tp @e[name="RedMobile"] ~ ~ ~


# If the player who had the flag died
execute if entity @e[scores={HasBlueFlag=1,IsDead=1}] run scoreboard players set @e[scores={HasBlueFlag=1,IsDead=1}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/drop/blue
scoreboard players set @a CallStack00 0

execute if entity @e[scores={HasRedFlag=1,IsDead=1}] run scoreboard players set @e[scores={HasRedFlag=1,IsDead=1}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/drop/red
scoreboard players set @a CallStack00 0



# If a player recovers their team's flag
execute at @e[name="BlueMobile",scores={FlagPresent=1}] if entity @p[team=cecs,distance=..3] run scoreboard players set @p[team=cecs,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/recover/blue
scoreboard players set @a CallStack00 0

execute at @e[name="RedMobile",scores={FlagPresent=1}] if entity @p[team=cola,distance=..3] run scoreboard players set @p[team=cola,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/recover/red
scoreboard players set @a CallStack00 0