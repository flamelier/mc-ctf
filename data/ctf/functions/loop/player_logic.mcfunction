# Give a strength boost to players near their own base
execute at @e[name="BlueBase"] run effect give @a[team=cecs,distance=..5] minecraft:strength 5 1 true
execute at @e[name="RedBase"] run effect give @a[team=cola,distance=..5] minecraft:strength 5 1 true

# Give any player that is holding the flag glowing
effect give @a[scores={HasBlueFlag=1}] minecraft:glowing 10 1 true
effect give @a[scores={HasRedFlag=1}] minecraft:glowing 10 1 true

item replace entity @a[tag=!Tank,scores={HasBlueFlag=0,HasRedFlag=0}] armor.head with minecraft:air

# Remove all items from the ground
execute as @e[type=minecraft:item,nbt={OnGround:1b}] run kill @s

# If a player used an ender pearl, start the cooldown
scoreboard players set @a[scores={UsedPearl=1..},tag=Normie] PearlCooldown 200
scoreboard players set @a[scores={UsedPearl=1..},tag=Scout] PearlCooldown 300
scoreboard players set @a[scores={UsedPearl=1..}] UsedPearl 0

# Check to see if players have finished the cooldown and need a new pearl
give @a[scores={PearlCooldown=0}] minecraft:ender_pearl

scoreboard players remove @a[scores={PearlCooldown=0..}] PearlCooldown 1

# Update player classes
function ctf:event/join_class


# Update deaths
scoreboard players set @e[scores={DeathRegisterd=1}] IsDead 0

clear @a[scores={DeathRegisterd=1}]

tag @a[scores={DeathRegisterd=1}] remove Mage
tag @a[scores={DeathRegisterd=1}] remove Medic
tag @a[scores={DeathRegisterd=1}] remove Normie
tag @a[scores={DeathRegisterd=1}] remove Scout
tag @a[scores={DeathRegisterd=1}] remove Assassin
tag @a[scores={DeathRegisterd=1}] remove Tank
effect clear @a[scores={DeathRegisterd=1}]

item replace entity @a[scores={DeathRegisterd=1}] armor.head with minecraft:air
item replace entity @a[scores={DeathRegisterd=1},team=cola] armor.chest with minecraft:leather_chestplate{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1}],display:{color:16711680}}
item replace entity @a[scores={DeathRegisterd=1},team=cecs] armor.chest with minecraft:leather_chestplate{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1}],display:{color:255}}

scoreboard players set @e[scores={DeathRegisterd=1}] DeathRegisterd 0
scoreboard players set @e[scores={DeathRegisterd=1}] PearlCooldown -1
scoreboard players set @e[scores={IsDead=1..100}] DeathRegisterd 1

weather clear

effect give @a[tag=Normie,scores={HasBlueFlag=0,HasRedFlag=0}] minecraft:speed 1000000 1 true
effect give @a[tag=Healer,scores={HasBlueFlag=0,HasRedFlag=0}] minecraft:speed 1000000 1 true
effect give @a[tag=Scout,scores={HasBlueFlag=0,HasRedFlag=0}] minecraft:speed 1000000 3 true
effect give @a[tag=Scout,scores={HasBlueFlag=1}] minecraft:speed 1000000 1 true
effect give @a[tag=Scout,scores={HasRedFlag=1}] minecraft:speed 1000000 1 true
# effect give @a[tag=Tank] minecraft:slowness 1000000 2 true
# effect give @a[tag=Tank] minecraft:jump_boost 1000000 128 true
effect give @a[tag=Tank] minecraft:regeneration 1000000 2 true
effect give @a[tag=Medic] minecraft:weakness 1000000 1 true
effect give @a[tag=Medic] minecraft:jump_boost 1000000 7 true
effect give @a[tag=Mage] minecraft:weakness 1000000 1 true
effect give @a[tag=Mage] minecraft:resistance 1000000 1 true
effect give @a[tag=Mage,scores={HasBlueFlag=0,HasRedFlag=0}] minecraft:speed 1000000 1 true
kill @a[tag=Assassin,scores={UsedNetherSword=1..}]
effect give @a[tag=Assassin] minecraft:instant_health 1 19 true

execute at @a[tag=Medic,scores={ParticleCooldown=0}] run particle minecraft:heart ~ ~2 ~ 0.15 0.15 0.15 1 1

scoreboard players remove @a[scores={ParticleCooldown=0..}] ParticleCooldown 1
scoreboard players set @a[tag=Medic,scores={ParticleCooldown=..-1}] ParticleCooldown 20
scoreboard players set @a UsedNetherSword 0