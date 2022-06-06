tag @a[tag=JoinMage] add JoinNew
tag @a[tag=JoinMedic] add JoinNew
tag @a[tag=JoinNormie] add JoinNew
tag @a[tag=JoinScout] add JoinNew
tag @a[tag=JoinTank] add JoinNew
tag @a[tag=JoinAssassin] add JoinNew


clear @a[tag=JoinNew]
effect clear @a[tag=JoinNew]
item replace entity @a[team=cola,tag=JoinNew,tag=!JoinAssassin] armor.chest with minecraft:leather_chestplate{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1}],display:{color:16711680}}
item replace entity @a[team=cecs,tag=JoinNew,tag=!JoinAssassin] armor.chest with minecraft:leather_chestplate{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1}],display:{color:255}}

tag @a[tag=JoinNew] remove Scout
tag @a[tag=JoinNew] remove Normie
tag @a[tag=JoinNew] remove Tank
tag @a[tag=JoinNew] remove Medic
tag @a[tag=JoinNew] remove Mage
tag @a[tag=JoinNew] remove Assassin


loot give @a[tag=JoinNormie] loot ctf:classes/normie 
tag @a[tag=JoinNormie] add Normie
item replace entity @a[tag=JoinNormie] armor.legs with minecraft:leather_leggings{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1}]}
item replace entity @a[tag=JoinNormie] armor.feet with minecraft:leather_boots{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1}]}
tag @a[tag=JoinNormie] remove JoinNormie

loot give @a[tag=JoinScout] loot ctf:classes/scout 
tag @a[tag=JoinScout] add Scout
tag @a[tag=JoinScout] remove JoinScout

loot give @a[tag=JoinTank] loot ctf:classes/tank
tag @a[tag=JoinTank] add Tank
item replace entity @a[tag=JoinTank] armor.head with minecraft:diamond_helmet{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1},{id:"blast_protection",lvl:5}]}
item replace entity @a[tag=JoinTank] armor.legs with minecraft:diamond_leggings{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1}]}
item replace entity @a[tag=JoinTank] armor.feet with minecraft:diamond_boots{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1}]}
tag @a[tag=JoinTank] remove JoinTank

loot give @a[tag=JoinMedic] loot ctf:classes/medic
tag @a[tag=JoinMedic] add Medic
item replace entity @a[tag=JoinMedic] armor.legs with minecraft:leather_leggings{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1},{id:"protection",lvl:5},{id:"blast_protection",lvl:5},{id:"projectile_protection",lvl:5}]}
item replace entity @a[tag=JoinMedic] armor.feet with minecraft:leather_boots{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1}]}
tag @a[tag=JoinMedic] remove JoinMedic

loot give @a[tag=JoinMage] loot ctf:classes/mage
tag @a[tag=JoinMage] add Mage
tag @a[tag=JoinMage] remove JoinMage

loot give @a[tag=JoinAssassin] loot ctf:classes/assassin
item replace entity @a[tag=JoinAssassin] armor.feet with minecraft:leather_boots{Enchantments:[{id:"unbreaking",lvl:255},{id:"binding_curse",lvl:1}]}
tag @a[tag=JoinAssassin] add Assassin
tag @a[tag=JoinAssassin] remove JoinAssassin


scoreboard players set @a[tag=JoinNew] PearlCooldown -1
tag @a[tag=JoinNew] remove JoinNew