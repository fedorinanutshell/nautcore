scoreboard objectives add neoid dummy {"text": "ID", "color": "dark_blue", "bold": true}
scoreboard objectives add neoid_bind dummy {"text": "Bind ID", "color": "dark_blue", "bold": true}

scoreboard objectives add neoid_uuid_0 dummy {"text": "UUID 0", "color": "dark_blue", "bold": true}
scoreboard objectives add neoid_uuid_1 dummy {"text": "UUID 1", "color": "dark_blue", "bold": true}
scoreboard objectives add neoid_uuid_2 dummy {"text": "UUID 2", "color": "dark_blue", "bold": true}
scoreboard objectives add neoid_uuid_3 dummy {"text": "UUID 3", "color": "dark_blue", "bold": true}

scoreboard objectives setdisplay list neoid

execute in nauthack:blackworld_players run forceload add -1 -1 0 0