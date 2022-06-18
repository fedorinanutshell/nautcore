execute as @a store result score @s nautcore_hitcd run data get entity @s HurtTime

execute as @a if score @s nautcore_dead matches 1.. run function #nauthack:dead