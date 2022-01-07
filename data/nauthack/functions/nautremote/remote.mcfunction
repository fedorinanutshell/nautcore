#nautremote may prevent players from stepping on certain blocks, prevent from escaping map, etc

tag @e remove nautremote_remote

summon minecraft:armor_stand ~ ~ ~ {NoGravity: true, Marker: true, Invisible: true, Invulnerable: true, Tags: ["nautremote_remote"]}

execute store result entity @e[tag=nautremote_remote, limit=1] Pos[0] double 0.01 run scoreboard players get @s nautremote_px
execute store result entity @e[tag=nautremote_remote, limit=1] Pos[1] double 0.01 run scoreboard players get @s nautremote_py
execute store result entity @e[tag=nautremote_remote, limit=1] Pos[2] double 0.01 run scoreboard players get @s nautremote_pz

data modify entity @e[tag=nautremote_remote, limit=1] Rotation set from entity @s Rotation

tp @s @e[tag=nautremote_remote, limit=1]

kill @e[tag=nautremote_remote]