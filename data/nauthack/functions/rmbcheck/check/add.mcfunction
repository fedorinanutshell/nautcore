summon minecraft:villager ^ ^ ^-1 {Invulnerable: true, NoAI: true, NoGravity: true, Silent: true, Offers: {}, Tags: ["rmbcheck_villager", "rmbcheck_init"]}
tag @s add rmbcheck

data modify storage nauthack:nauthack rmbcheck.databuffer set value {}
execute store result storage nauthack:nauthack rmbcheck.databuffer.ownerID long 1.0 run scoreboard players get @s nautid_id
execute as @e[tag = rmbcheck_init] at @s run function nauthack:nautid/setid

scoreboard players add rmbcheck_maxid nautmath_var 1
scoreboard players operation @e[tag = rmbcheck_init] rmbcheck_id = rmbcheck_maxid nautmath_var
execute store result storage nauthack:nauthack rmbcheck.databuffer.ID long 1.0 run scoreboard players get @s nautid_id
execute store result storage nauthack:nauthack rmbcheck.databuffer.rmbcheckID long 1.0 run scoreboard players get @e[tag = rmbcheck_init, limit = 1] rmbcheck_id
data modify storage nauthack:nauthack rmbcheck.databuffer.UUID set from entity @e[tag = rmbcheck_init, limit = 1] UUID
data modify storage nauthack:nauthack rmbcheck.data append from storage nauthack:nauthack rmbcheck.databuffer
team join nautcore_nocoll @e[tag = rmbcheck_init]

effect give @e[type=minecraft:villager, tag=rmbcheck_init] minecraft:resistance 999999 9 true
effect give @e[type=minecraft:villager, tag=rmbcheck_init] minecraft:regeneration 999999 9 true
effect give @e[type=minecraft:villager, tag=rmbcheck_init] minecraft:speed 999999 9 true
effect give @e[type=minecraft:villager, tag=rmbcheck_init] minecraft:invisibility 999999 9 true

tag @e[tag = rmbcheck_init] remove rmbcheck_init