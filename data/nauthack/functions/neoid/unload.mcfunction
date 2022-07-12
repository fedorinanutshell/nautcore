scoreboard objectives remove neoid
scoreboard objectives remove neoid_bind

scoreboard objectives remove neoid_uuid_0
scoreboard objectives remove neoid_uuid_1
scoreboard objectives remove neoid_uuid_2
scoreboard objectives remove neoid_uuid_3

kill @e[tag = neoid_bound]

tag @e remove neoid

execute in nauthack:blackworld_players run forceload remove -1 -1 0 0