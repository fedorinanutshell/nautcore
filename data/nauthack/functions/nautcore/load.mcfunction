scoreboard objectives add nautmath_var dummy {"text": "Variable", "color": "lime", "bold": true}
scoreboard players set -1 nautmath_var -1
scoreboard players set 0 nautmath_var 0
scoreboard players set 1 nautmath_var 1
scoreboard players set 2 nautmath_var 2
scoreboard players set 3 nautmath_var 3
scoreboard players set 4 nautmath_var 4
scoreboard players set 5 nautmath_var 5
scoreboard players set 7 nautmath_var 7
scoreboard players set 8 nautmath_var 8
scoreboard players set 9 nautmath_var 9
scoreboard players set 10 nautmath_var 10
scoreboard players set 11 nautmath_var 11
scoreboard players set 12 nautmath_var 12
scoreboard players set 15 nautmath_var 15
scoreboard players set 16 nautmath_var 16
scoreboard players set 20 nautmath_var 20
scoreboard players set 25 nautmath_var 25
scoreboard players set 50 nautmath_var 50
scoreboard players set 64 nautmath_var 64
scoreboard players set 100 nautmath_var 100
scoreboard players set 1000 nautmath_var 1000

gamerule maxCommandChainLength 2147483647

scoreboard objectives add nautid_id dummy {"text": "ID", "color": "dark_blue", "bold": true}
scoreboard objectives add nautid_uuid0 dummy {"text": "UUID[0]", "color": "dark_blue", "bold": true}
scoreboard objectives add nautid_uuid1 dummy {"text": "UUID[1]", "color": "dark_blue", "bold": true}
scoreboard objectives add nautid_uuid2 dummy {"text": "UUID[2]", "color": "dark_blue", "bold": true}
scoreboard objectives add nautid_uuid3 dummy {"text": "UUID[3]", "color": "dark_blue", "bold": true}

scoreboard objectives add nautcore_death deathCount {"text": "Count of Deaths", "color": "dark_gray", "bold": true}
scoreboard objectives add nautcore_killpl playerKillCount {"text": "Count of Killed Players", "color": "gray", "bold": true}
scoreboard objectives add nautcore_killany totalKillCount {"text": "Count of Killed Entities", "color": "gray", "bold": true}
scoreboard objectives add nautcore_hitcd dummy {"text": "...", "color": "yellow", "bold": true}

scoreboard objectives add nautcore_dead deathCount {"text": "Count of Deaths", "color": "dark_gray", "bold": true}

scoreboard objectives add rmbcheck_clicks custom:minecraft.talked_to_villager {"text": "Talked to Villager", "color": "gold", "bold": true}

scoreboard objectives add rmbcheck_active dummy {"text": "Active rmbcheck Villager", "color": "blue", "bold": true}

scoreboard objectives add rmbcheck_add dummy {"text": "Add Condition of rmbcheck Villager", "color": "dark_aqua", "bold": true}
scoreboard objectives add rmbcheck_remove dummy {"text": "Remove Condition of rmbcheck Villager", "color": "dark_red", "bold": true}

scoreboard objectives add asyncray_owner dummy {"text": "Owner of asyncray's process", "color": "red", "bold": true}

title @a times 10 20 10

team add nautcore_nocoll {"text": "No Collision Team", "color": "gold", "bold": true}
team modify nautcore_nocoll collisionRule never