execute in nauthack:blackworld_neotimer run summon minecraft:marker 0 0 0 {Tags: ["neotimer", "neotimer_init"]}

data modify entity @e[tag = neotimer_init, limit = 1] data.neotimer.args set from storage nauthack:nauthack neotimer.args
execute store result entity @e[tag = neotimer_init, limit = 1] data.neotimer.ownerID int 1.0 run scoreboard players get @s neoid

execute store result entity @e[tag = neotimer_init, limit = 1] data.neotimer.time int 1.0 run scoreboard players get neotimer_time nautmath_var

execute as @e[tag = neotimer_init] run function nauthack:neoid/setid

tag @e remove neotimer_init