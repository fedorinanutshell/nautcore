scoreboard players add nautid_maxid nautmath_var 1
scoreboard players operation @s nautid_id = nautid_maxid nautmath_var

execute if score nautid_store nautmath_var matches 1 run function nauthack:nautid/store

execute store result score @s nautid_uuid0 run data get entity @s UUID[0]
execute store result score @s nautid_uuid1 run data get entity @s UUID[1]
execute store result score @s nautid_uuid2 run data get entity @s UUID[2]
execute store result score @s nautid_uuid3 run data get entity @s UUID[3]

tellraw @a[tag = nautid_checklog] {"text": "New entity ", "color": "lime", "extra": [{"selector": "@s", "italic": true, "color": "gold"}, {"text": " logged by nautid system with ID: "}, {"score": {"name": "@s", "objective": "nautid_id"}}]}