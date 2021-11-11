summon minecraft:villager ^ ^ ^-1 {Invulnerable: true, NoAI: true, NoGravity: true, Silent: true, Offers: {}, Tags: ["rmbcheck_villager", "rmbcheck_init"]}
tag @s add rmbcheck

data modify storage nauthack:nauthack nautid.databuffer set value {}
execute store result storage nauthack:nauthack nautid.databuffer.rmbcheck_ownerID int 1.0 run scoreboard players get @s nautid_id
execute as @e[tag = rmbcheck_init] at @s run function nauthack:nautid/setid_args
team join nautcore_nocoll @e[tag = rmbcheck_init]

effect give @e[type=minecraft:villager, tag=rmbcheck_init] minecraft:resistance 999999 9 true
effect give @e[type=minecraft:villager, tag=rmbcheck_init] minecraft:regeneration 999999 9 true
effect give @e[type=minecraft:villager, tag=rmbcheck_init] minecraft:speed 999999 9 true
effect give @e[type=minecraft:villager, tag=rmbcheck_init] minecraft:invisibility 999999 9 true

tag @e[tag = rmbcheck_init] remove rmbcheck_init