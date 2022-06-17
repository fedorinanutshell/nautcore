scoreboard objectives add neoid dummy {"text": "ID", "color": "dark_blue", "bold": true}
scoreboard objectives add neoid_bind dummy {"text": "Bind ID", "color": "dark_blue", "bold": true}

scoreboard objectives setdisplay list neoid

execute in nauthack:blackworld_players run forceload add -1 -1 0 0