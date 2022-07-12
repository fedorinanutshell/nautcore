execute as @e[tag = !neoid, tag = !neoid_bound, tag = !neoid_ignore] run function nauthack:neoid/setid

execute as @a store result score @s neoid_uuid_0 run data get entity @s UUID[0]
execute as @a store result score @s neoid_uuid_1 run data get entity @s UUID[1]
execute as @a store result score @s neoid_uuid_2 run data get entity @s UUID[2]
execute as @a store result score @s neoid_uuid_3 run data get entity @s UUID[3]