scoreboard objectives remove neoid
scoreboard objectives remove neoid_bind

kill @e[tag = neoid_bound]

tag @e remove neoid

execute in nauthack:blackworld_players run forceload remove -1 -1 0 0