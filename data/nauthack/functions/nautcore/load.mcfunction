#descriptions of scoreboard objectives have enough information

tellraw @a {"text" : "NautCore successfully loaded. Don't forget to do '/function #nauthack:unload' if you want to uninstall this data-pack", "bold": true, "color": "aqua"}

gamerule maxCommandChainLength 2147483647

title @a times 10 20 10

scoreboard objectives add nautcore_death deathCount {"text": "Count of Deaths", "color": "dark_gray", "bold": true}
scoreboard objectives add nautcore_killpl playerKillCount {"text": "Count of Killed Players", "color": "gray", "bold": true}
scoreboard objectives add nautcore_killany totalKillCount {"text": "Count of Killed Entities", "color": "gray", "bold": true}
scoreboard objectives add nautcore_hitcd dummy {"text": "...", "color": "yellow", "bold": true}
scoreboard objectives add nautcore_dead deathCount {"text": "Count of Deaths", "color": "dark_gray", "bold": true}

team add nautcore_nocoll {"text": "No Collision Team", "color": "gold", "bold": true}
team modify nautcore_nocoll collisionRule never