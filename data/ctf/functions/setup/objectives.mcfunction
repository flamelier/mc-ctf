scoreboard objectives add FlagPresent dummy "Flag at stand"
scoreboard objectives add IsDead deathCount "Player died"
scoreboard objectives add DeathRegisterd dummy "Death has been registered"

scoreboard objectives add HasBlueFlag dummy "Has the blue flag"
scoreboard objectives add HasRedFlag dummy "Has the red flag"

scoreboard objectives add FlagsCaptured dummy "Flags captured"
scoreboard objectives add FlagsStolen dummy "Flags stolen"
scoreboard objectives add FlagsRecovered dummy "Flags recovered"
scoreboard objectives add FlagsDropped dummy "Flags dropped"

scoreboard objectives add TeamCaptured dummy "Flags captured"
scoreboard objectives add TeamStolen dummy "Flags stolen"
scoreboard objectives add TeamRecovered dummy "Flags recovered"
scoreboard objectives add TeamDropped dummy "Flags dropped"

scoreboard objectives add CallStack00 dummy "Call Stack Slot x00"

scoreboard objectives add ParticleCooldown dummy "Particle Cooldown"

scoreboard objectives add UsedNetherSword minecraft.used:minecraft.netherite_sword "Used netherite sword"

scoreboard objectives add Health health "Player health"

scoreboard objectives add UsedPearl minecraft.used:minecraft.ender_pearl "Player used ender pearl"
scoreboard objectives add PearlCooldown dummy "Ender pearl cooldown"

scoreboard objectives add GameTime dummy "Game run time"
scoreboard objectives add IsFinal dummy "Whether or not this is the final round"

scoreboard players set Game GameTime -1
scoreboard players set Game IsFinal 0

scoreboard objectives add END_CTF dummy "End the CTF"
scoreboard players set start END_CTF 0