scoreboard objectives remove nautcore_dead
scoreboard objectives remove nautcore_death
scoreboard objectives remove nautcore_hitcd
scoreboard objectives remove nautcore_killany
scoreboard objectives remove nautcore_killpl
scoreboard objectives remove nautmath_var

data remove storage nauthack:nauthack asyncray
data remove storage nauthack:nauthack bundle
data remove storage nauthack:nauthack nautdata
data remove storage nauthack:nauthack nautid
data remove storage nauthack:nauthack nautmap
data remove storage nauthack:nauthack nautray
data remove storage nauthack:nauthack nauttimer
data remove storage nauthack:nauthack nauttrack
data remove storage nauthack:nauthack rmbcheck
data remove storage nauthack:nauthack freeray

execute in nauthack:blackworld_neoid run forceload remove -1 -1 0 0

team remove nautcore_nocoll